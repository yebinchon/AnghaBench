; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_context_preallocated_create.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_context_preallocated_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@default_illegal_callback = common dso_local global i32 0, align 4
@default_error_callback = common dso_local global i32 0, align 4
@SECP256K1_FLAGS_TYPE_MASK = common dso_local global i32 0, align 4
@SECP256K1_FLAGS_TYPE_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Invalid flags\00", align 1
@SECP256K1_FLAGS_BIT_CONTEXT_SIGN = common dso_local global i32 0, align 4
@SECP256K1_FLAGS_BIT_CONTEXT_VERIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @secp256k1_context_preallocated_create(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY_CHECK(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @secp256k1_context_preallocated_size(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @manual_alloc(i8** %4, i32 16, i8* %16, i64 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %8, align 8
  %20 = load i32, i32* @default_illegal_callback, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @default_error_callback, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SECP256K1_FLAGS_TYPE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @SECP256K1_FLAGS_TYPE_CONTEXT, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @EXPECT(i32 %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = call i32 @secp256k1_callback_call(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %64

38:                                               ; preds = %2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @secp256k1_ecmult_context_init(i32* %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = call i32 @secp256k1_ecmult_gen_context_init(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SECP256K1_FLAGS_BIT_CONTEXT_SIGN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @secp256k1_ecmult_gen_context_build(i32* %51, i8** %4)
  br label %53

53:                                               ; preds = %49, %38
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SECP256K1_FLAGS_BIT_CONTEXT_VERIFY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @secp256k1_ecmult_context_build(i32* %60, i8** %4)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %3, align 8
  br label %64

64:                                               ; preds = %62, %34
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %65
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i64 @secp256k1_context_preallocated_size(i32) #1

declare dso_local i64 @manual_alloc(i8**, i32, i8*, i64) #1

declare dso_local i64 @EXPECT(i32, i32) #1

declare dso_local i32 @secp256k1_callback_call(i32*, i8*) #1

declare dso_local i32 @secp256k1_ecmult_context_init(i32*) #1

declare dso_local i32 @secp256k1_ecmult_gen_context_init(i32*) #1

declare dso_local i32 @secp256k1_ecmult_gen_context_build(i32*, i8**) #1

declare dso_local i32 @secp256k1_ecmult_context_build(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
