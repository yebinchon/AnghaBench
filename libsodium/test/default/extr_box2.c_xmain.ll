; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_box2.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_box2.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@m = common dso_local global i64* null, align 8
@c = common dso_local global i32 0, align 4
@nonce = common dso_local global i32 0, align 4
@alicepk = common dso_local global i32 0, align 4
@bobsk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@small_order_p = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i64*, i64** @m, align 8
  %11 = load i32, i32* @c, align 4
  %12 = load i32, i32* @nonce, align 4
  %13 = load i32, i32* @alicepk, align 4
  %14 = load i32, i32* @bobsk, align 4
  %15 = call i32 @crypto_box_open(i64* %10, i32 %11, i32 163, i32 %12, i32 %13, i32 %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %0
  store i32 32, i32* %4, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 163
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i64*, i64** @m, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = srem i32 %29, 8
  %31 = icmp eq i32 %30, 7
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %18

38:                                               ; preds = %18
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %0
  %41 = load i64*, i64** @m, align 8
  %42 = load i32, i32* @c, align 4
  %43 = load i32, i32* @nonce, align 4
  %44 = load i32, i32* @small_order_p, align 4
  %45 = load i32, i32* @bobsk, align 4
  %46 = call i32 @crypto_box_open(i64* %41, i32 %42, i32 163, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, -1
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64*, i64** @m, align 8
  %52 = call i32 @memset(i64* %51, i32 0, i32 8)
  %53 = load i32, i32* @small_order_p, align 4
  %54 = load i32, i32* @bobsk, align 4
  %55 = call i32 @crypto_box_beforenm(i8* %9, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, -1
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* @alicepk, align 4
  %61 = load i32, i32* @bobsk, align 4
  %62 = call i32 @crypto_box_beforenm(i8* %9, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i64*, i64** @m, align 8
  %68 = load i32, i32* @c, align 4
  %69 = load i32, i32* @nonce, align 4
  %70 = call i64 @crypto_box_open_afternm(i64* %67, i32 %68, i32 163, i32 %69, i8* %9)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %40
  store i32 32, i32* %4, align 4
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 163
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load i64*, i64** @m, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = srem i32 %84, 8
  %86 = icmp eq i32 %85, 7
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %76
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %73

93:                                               ; preds = %73
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %40
  store i32 0, i32* %1, align 4
  %96 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_box_open(i64*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @crypto_box_beforenm(i8*, i32, i32) #2

declare dso_local i64 @crypto_box_open_afternm(i64*, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
