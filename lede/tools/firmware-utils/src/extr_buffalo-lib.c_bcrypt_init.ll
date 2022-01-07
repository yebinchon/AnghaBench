; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-lib.c_bcrypt_init.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-lib.c_bcrypt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcrypt_ctx = type { i8*, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcrypt_init(%struct.bcrypt_ctx* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcrypt_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  store %struct.bcrypt_ctx* %0, %struct.bcrypt_ctx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %11, align 8
  store i64 0, i64* %14, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %88

22:                                               ; preds = %4
  %23 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %23, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %43, %22
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = trunc i64 %38 to i8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %42, align 1
  br label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  br label %33

46:                                               ; preds = %33
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %47
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %15, align 1
  %56 = load i64, i64* %14, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i64
  %62 = add i64 %56, %61
  %63 = load i8, i8* %15, align 1
  %64 = zext i8 %63 to i64
  %65 = add i64 %62, %64
  %66 = load i64, i64* %9, align 8
  %67 = urem i64 %65, %66
  store i64 %67, i64* %14, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 %71, i8* %74, align 1
  %75 = load i8, i8* %15, align 1
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 %75, i8* %78, align 1
  br label %79

79:                                               ; preds = %51
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 1
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = urem i64 %83, %85
  store i64 %86, i64* %13, align 8
  br label %47

87:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %21
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
