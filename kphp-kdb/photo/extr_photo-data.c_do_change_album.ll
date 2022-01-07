; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_change_album.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_change_album.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_EVENT_SIZE = common dso_local global i32 0, align 4
@ALBUM_TYPE = common dso_local global i32 0, align 4
@field_changes_n = common dso_local global i64 0, align 8
@LEV_PHOTO_CHANGE_ALBUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_album(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @check_album_id(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MAX_EVENT_SIZE, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18, %12
  store i32 0, i32* %4, align 4
  br label %41

26:                                               ; preds = %21
  %27 = load i32, i32* @ALBUM_TYPE, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @php_get_fields(i32 %27, i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %41

32:                                               ; preds = %26
  %33 = load i64, i64* @field_changes_n, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LEV_PHOTO_CHANGE_ALBUM, align 4
  %40 = call i32 @do_change_data(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %35, %31, %25, %11
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check_album_id(i32) #1

declare dso_local i64 @php_get_fields(i32, i8*) #1

declare dso_local i32 @do_change_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
