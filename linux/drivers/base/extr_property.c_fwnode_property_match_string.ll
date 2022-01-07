; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_property_match_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_property_match_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwnode_property_match_string(%struct.fwnode_handle* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @fwnode_property_read_string_array(%struct.fwnode_handle* %11, i8* %12, i8** null, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8** @kcalloc(i32 %25, i32 8, i32 %26)
  store i8** %27, i8*** %8, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %57

33:                                               ; preds = %24
  %34 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @fwnode_property_read_string_array(%struct.fwnode_handle* %34, i8* %35, i8** %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %53

42:                                               ; preds = %33
  %43 = load i8**, i8*** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @match_string(i8** %43, i32 %44, i8* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @ENODATA, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i8**, i8*** %8, align 8
  %55 = call i32 @kfree(i8** %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %30, %21, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @fwnode_property_read_string_array(%struct.fwnode_handle*, i8*, i8**, i32) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @match_string(i8**, i32, i8*) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
