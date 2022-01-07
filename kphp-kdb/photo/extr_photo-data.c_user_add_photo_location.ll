; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_add_photo_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_add_photo_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_only = common dso_local global i64 0, align 8
@location_buf = common dso_local global i8* null, align 8
@mode = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_add_photo_location(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %23 = load i64, i64* @write_only, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  br label %122

26:                                               ; preds = %8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @user_loaded(i32* %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %17, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %18, align 4
  %32 = load i8*, i8** %17, align 8
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @check_photo(i8* %32, i32 %33)
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i8* @user_photo_get_location(i32* %36, i32 %37, i32 %38, i32 1, i32* %19)
  store i8* %39, i8** %20, align 8
  %40 = load i8*, i8** %20, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %122

43:                                               ; preds = %26
  %44 = load i8*, i8** @location_buf, align 8
  store i8* %44, i8** %21, align 8
  %45 = load i32, i32* %19, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i8*, i8** %20, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load i8*, i8** %20, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* @mode, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = sub nsw i32 0, %60
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, 16
  %64 = add i64 %63, 1
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %19, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i8*, i8** %20, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %20, align 8
  br label %73

73:                                               ; preds = %53, %47, %43
  %74 = load i32, i32* %18, align 4
  %75 = sub nsw i32 0, %74
  %76 = load i8, i8* @mode, align 1
  %77 = sext i8 %76 to i32
  %78 = sub nsw i32 %75, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %21, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %21, align 8
  store i8 %79, i8* %80, align 1
  %82 = load i8*, i8** %21, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @WRITE_INT(i8* %82, i32 %83)
  %85 = load i8*, i8** %21, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @WRITE_INT(i8* %85, i32 %86)
  %88 = load i8*, i8** %21, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @WRITE_INT(i8* %88, i32 %89)
  %91 = load i8*, i8** %21, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @WRITE_INT(i8* %91, i32 %92)
  %94 = load i8*, i8** %21, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @WRITE_STRING(i8* %94, i8* %95)
  %97 = load i32, i32* %19, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %73
  %100 = load i8*, i8** %21, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %21, align 8
  store i8 0, i8* %100, align 1
  br label %107

102:                                              ; preds = %73
  %103 = load i8*, i8** %21, align 8
  %104 = load i8*, i8** %20, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @memcpy(i8* %103, i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i8*, i8** @location_buf, align 8
  %112 = load i8*, i8** %21, align 8
  %113 = load i8*, i8** @location_buf, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32 @user_photo_set_location(i32* %108, i32 %109, i32 %110, i8* %111, i32 %120)
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %107, %42, %25
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check_photo(i8*, i32) #1

declare dso_local i8* @user_photo_get_location(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @WRITE_INT(i8*, i32) #1

declare dso_local i32 @WRITE_STRING(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @user_photo_set_location(i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
