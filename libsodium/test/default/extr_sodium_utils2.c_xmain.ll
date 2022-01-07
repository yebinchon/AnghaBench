; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_sodium_utils2.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_sodium_utils2.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 @randombytes_uniform(i32 100)
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i8* @sodium_malloc(i64 %8)
  store i8* %9, i8** %2, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = load i64, i64* %4, align 8
  %13 = call i8* @sodium_malloc(i64 %12)
  store i8* %13, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %0
  store i32 1, i32* %1, align 4
  br label %150

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @randombytes_buf(i8* %17, i64 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @memcpy(i8* %20, i8* %21, i64 %22)
  %24 = load i64, i64* @EINVAL, align 8
  store i64 %24, i64* @errno, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @sodium_mshield(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOSYS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %47

34:                                               ; preds = %16
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %2, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @memcmp(i8* %38, i8* %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ true, %34 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %43, %28
  %48 = load i64, i64* @EINVAL, align 8
  store i64 %48, i64* @errno, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = call i64 @sodium_munshield(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @ENOSYS, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %71

58:                                               ; preds = %47
  %59 = load i64, i64* %4, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %2, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @memcmp(i8* %62, i8* %63, i64 %64)
  %66 = icmp eq i64 %65, 0
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i1 [ true, %58 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  br label %71

71:                                               ; preds = %67, %52
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @sodium_free(i8* %72)
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @sodium_free(i8* %74)
  %76 = load i32, i32* @SIZE_MAX, align 4
  %77 = sub i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = call i8* @sodium_malloc(i64 %78)
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 1, i32* %1, align 4
  br label %150

82:                                               ; preds = %71
  %83 = call i8* @sodium_malloc(i64 0)
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %1, align 4
  br label %150

86:                                               ; preds = %82
  %87 = load i32, i32* @SIZE_MAX, align 4
  %88 = udiv i32 %87, 2
  %89 = add i32 %88, 1
  %90 = load i32, i32* @SIZE_MAX, align 4
  %91 = udiv i32 %90, 2
  %92 = call i8* @sodium_allocarray(i32 %89, i32 %91)
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %1, align 4
  br label %150

95:                                               ; preds = %86
  %96 = call i8* @sodium_allocarray(i32 0, i32 0)
  %97 = call i32 @sodium_free(i8* %96)
  %98 = call i8* @sodium_allocarray(i32 0, i32 1)
  %99 = call i32 @sodium_free(i8* %98)
  %100 = call i8* @sodium_allocarray(i32 1, i32 0)
  %101 = call i32 @sodium_free(i8* %100)
  %102 = call i8* @sodium_allocarray(i32 1000, i32 50)
  store i8* %102, i8** %2, align 8
  %103 = load i8*, i8** %2, align 8
  %104 = call i32 @memset(i8* %103, i32 0, i64 50000)
  %105 = load i8*, i8** %2, align 8
  %106 = call i32 @sodium_free(i8* %105)
  %107 = call i8* @sodium_malloc(i64 0)
  %108 = call i32 @sodium_free(i8* %107)
  %109 = call i32 @sodium_free(i8* null)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %131, %95
  %111 = load i32, i32* %5, align 4
  %112 = icmp ult i32 %111, 10000
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = call i32 @randombytes_uniform(i32 100000)
  %115 = add i32 1, %114
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = call i8* @sodium_malloc(i64 %117)
  store i8* %118, i8** %2, align 8
  %119 = load i8*, i8** %2, align 8
  %120 = icmp ne i8* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i8*, i8** %2, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @memset(i8* %123, i32 %124, i64 %125)
  %127 = load i8*, i8** %2, align 8
  %128 = call i32 @sodium_mprotect_noaccess(i8* %127)
  %129 = load i8*, i8** %2, align 8
  %130 = call i32 @sodium_free(i8* %129)
  br label %131

131:                                              ; preds = %113
  %132 = load i32, i32* %5, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %110

134:                                              ; preds = %110
  %135 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %136 = call i32 @randombytes_uniform(i32 100000)
  %137 = add i32 1, %136
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %4, align 8
  %139 = load i64, i64* %4, align 8
  %140 = call i8* @sodium_malloc(i64 %139)
  store i8* %140, i8** %2, align 8
  %141 = load i8*, i8** %2, align 8
  %142 = icmp ne i8* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i8*, i8** %2, align 8
  %146 = call i32 @sodium_mprotect_readonly(i8* %145)
  %147 = load i8*, i8** %2, align 8
  %148 = call i32 @sodium_mprotect_readwrite(i8* %147)
  %149 = call i32 @segv_handler(i32 0)
  store i32 0, i32* %1, align 4
  br label %150

150:                                              ; preds = %134, %94, %85, %81, %15
  %151 = load i32, i32* %1, align 4
  ret i32 %151
}

declare dso_local i32 @randombytes_uniform(i32) #1

declare dso_local i8* @sodium_malloc(i64) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @sodium_mshield(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @sodium_munshield(i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i8* @sodium_allocarray(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @sodium_mprotect_noaccess(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sodium_mprotect_readonly(i8*) #1

declare dso_local i32 @sodium_mprotect_readwrite(i8*) #1

declare dso_local i32 @segv_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
