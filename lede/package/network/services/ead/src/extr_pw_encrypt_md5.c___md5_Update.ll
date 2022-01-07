; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_pw_encrypt_md5.c___md5_Update.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_pw_encrypt_md5.c___md5_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { i32*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MD5Context*, i8*, i32)* @__md5_Update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__md5_Update(%struct.MD5Context* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.MD5Context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.MD5Context* %0, %struct.MD5Context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %11 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 3
  %16 = and i32 %15, 63
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 3
  %19 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %20 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %23, %18
  store i32 %24, i32* %22, align 4
  %25 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %26 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 3
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %35 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %3
  %41 = load i32, i32* %6, align 4
  %42 = lshr i32 %41, 29
  %43 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %44 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 64, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %40
  %55 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %56 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  %64 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %65 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %68 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @__md5_Transform(i32 %66, i8* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %86, %54
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 63
  %75 = load i32, i32* %6, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %79 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i32 @__md5_Transform(i32 %80, i8* %84)
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 64
  store i32 %88, i32* %7, align 4
  br label %72

89:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %91

90:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %93 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub i32 %102, %103
  %105 = call i32 @memcpy(i8* %97, i8* %101, i32 %104)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @__md5_Transform(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
