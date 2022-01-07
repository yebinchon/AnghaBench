; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_khash_test.c_ht_khash_unpack.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_khash_test.c_ht_khash_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@int_data = common dso_local global i32* null, align 8
@iun = common dso_local global i32 0, align 4
@h = common dso_local global i32 0, align 4
@data_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[ht_khash_unpack] size: %u (sizeof=%ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht_khash_unpack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = load i32*, i32** @int_data, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32, i32* @iun, align 4
  %8 = call i32 @khash_t(i32 %7)
  %9 = load i32, i32* @h, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i32, i32* @iun, align 4
  %12 = call i32 @kh_init(i32 %11)
  store i32 %12, i32* @h, align 4
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %40, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @data_size, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %1, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @iun, align 4
  %28 = load i32, i32* @h, align 4
  %29 = bitcast %struct.TYPE_3__* %5 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @kh_put(i32 %27, i32 %28, i64 %30, i32* %2)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @iun, align 4
  %36 = load i32, i32* @h, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @kh_del(i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load i32, i32* @h, align 4
  %45 = call i32 @kh_size(i32 %44)
  %46 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45, i32 8)
  %47 = load i32, i32* @iun, align 4
  %48 = load i32, i32* @h, align 4
  %49 = call i32 @kh_destroy(i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @khash_t(i32) #1

declare dso_local i32 @kh_init(i32) #1

declare dso_local i32 @kh_put(i32, i32, i64, i32*) #1

declare dso_local i32 @kh_del(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @kh_size(i32) #1

declare dso_local i32 @kh_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
