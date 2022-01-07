; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_defaults.c_default_encrypt_cid.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_defaults.c_default_encrypt_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.st_quicly_default_encrypt_cid_t = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"unexpected block size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i8*, %struct.TYPE_9__*)* @default_encrypt_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_encrypt_cid(i32* %0, %struct.TYPE_8__* %1, i8* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.st_quicly_default_encrypt_cid_t*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.st_quicly_default_encrypt_cid_t*
  store %struct.st_quicly_default_encrypt_cid_t* %14, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32* %15, i32** %11, align 8
  %16 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %17 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %30 [
    i32 8, label %23
    i32 16, label %24
  ]

23:                                               ; preds = %4
  br label %32

24:                                               ; preds = %4
  %25 = load i32*, i32** %11, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @quicly_encode64(i32* %25, i32 %28)
  store i32* %29, i32** %11, align 8
  br label %32

30:                                               ; preds = %4
  %31 = call i32 @assert(i32 0)
  br label %32

32:                                               ; preds = %30, %24, %23
  %33 = load i32*, i32** %11, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @quicly_encode32(i32* %33, i32 %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  %47 = call i32* @quicly_encode32(i32* %38, i32 %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %55 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %53, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %66 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %72 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %73 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ptls_cipher_encrypt(%struct.TYPE_10__* %67, i32 %70, i32* %71, i32 %78)
  %80 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %81 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %32
  %92 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @generate_reset_token(%struct.st_quicly_default_encrypt_cid_t* %92, i8* %93, i32 %96)
  br label %98

98:                                               ; preds = %91, %32
  ret void
}

declare dso_local i32* @quicly_encode64(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @quicly_encode32(i32*, i32) #1

declare dso_local i32 @ptls_cipher_encrypt(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @generate_reset_token(%struct.st_quicly_default_encrypt_cid_t*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
