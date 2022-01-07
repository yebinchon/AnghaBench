; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_del_photo_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_del_photo_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_only = common dso_local global i64 0, align 8
@location_buf = common dso_local global i8* null, align 8
@mode = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_del_photo_location(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @write_only, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %71

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @user_loaded(i32* %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @user_photo_get_location(i32* %19, i32 %20, i32 %21, i32 1, i32* %8)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %71

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %26
  store i32 1, i32* %4, align 4
  br label %71

36:                                               ; preds = %29
  %37 = load i8*, i8** @location_buf, align 8
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @mode, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %41, %43
  %45 = sub nsw i32 0, %44
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 16
  %48 = add i64 %47, 1
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %9, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @memcpy(i8* %61, i8* %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i8*, i8** @location_buf, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @user_photo_set_location(i32* %65, i32 %66, i32 %67, i8* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %36, %35, %25, %14
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(i32*) #1

declare dso_local i8* @user_photo_get_location(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @user_photo_set_location(i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
