; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_box_easy.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_box_easy.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = common dso_local global i64* null, align 8
@m = common dso_local global i32 0, align 4
@nonce = common dso_local global i32 0, align 4
@bobpk = common dso_local global i32 0, align 4
@alicesk = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@guard_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i64*, i64** @c, align 8
  %5 = load i32, i32* @m, align 4
  %6 = load i32, i32* @nonce, align 4
  %7 = load i32, i32* @bobpk, align 4
  %8 = load i32, i32* @alicesk, align 4
  %9 = call i32 @crypto_box_easy(i64* %4, i32 %5, i32 131, i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  store i64 0, i64* %2, align 8
  br label %14

14:                                               ; preds = %27, %0
  %15 = load i64, i64* %2, align 8
  %16 = load i32, i32* @crypto_box_MACBYTES, align 4
  %17 = add nsw i32 131, %16
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i64*, i64** @c, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %2, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %2, align 8
  br label %14

30:                                               ; preds = %14
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64*, i64** @c, align 8
  %33 = load i32, i32* @guard_page, align 4
  %34 = load i32, i32* @nonce, align 4
  %35 = load i32, i32* @bobpk, align 4
  %36 = load i32, i32* @alicesk, align 4
  %37 = call i32 @crypto_box_easy(i64* %32, i32 %33, i32 0, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  store i64 0, i64* %2, align 8
  br label %42

42:                                               ; preds = %55, %30
  %43 = load i64, i64* %2, align 8
  %44 = load i32, i32* @crypto_box_MACBYTES, align 4
  %45 = add nsw i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i64*, i64** @c, align 8
  %50 = load i64, i64* %2, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %2, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %2, align 8
  br label %42

58:                                               ; preds = %42
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64*, i64** @c, align 8
  %61 = load i64*, i64** @c, align 8
  %62 = load i32, i32* @crypto_box_MACBYTES, align 4
  %63 = load i32, i32* @nonce, align 4
  %64 = load i32, i32* @bobpk, align 4
  %65 = load i32, i32* @alicesk, align 4
  %66 = call i32 @crypto_box_open_easy(i64* %60, i64* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  store i64 0, i64* %2, align 8
  br label %71

71:                                               ; preds = %84, %58
  %72 = load i64, i64* %2, align 8
  %73 = load i32, i32* @crypto_box_MACBYTES, align 4
  %74 = add nsw i32 1, %73
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i64*, i64** @c, align 8
  %79 = load i64, i64* %2, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %2, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %2, align 8
  br label %71

87:                                               ; preds = %71
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i64*, i64** @c, align 8
  %90 = load i32, i32* @crypto_box_MACBYTES, align 4
  %91 = call i64 @randombytes_uniform(i32 %90)
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load i64*, i64** @c, align 8
  %96 = load i64*, i64** @c, align 8
  %97 = load i32, i32* @crypto_box_MACBYTES, align 4
  %98 = load i32, i32* @nonce, align 4
  %99 = load i32, i32* @bobpk, align 4
  %100 = load i32, i32* @alicesk, align 4
  %101 = call i32 @crypto_box_open_easy(i64* %95, i64* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %102, -1
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  ret i32 0
}

declare dso_local i32 @crypto_box_easy(i64*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @crypto_box_open_easy(i64*, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @randombytes_uniform(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
