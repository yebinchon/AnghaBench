; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_canonicalize_ceiling_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_canonicalize_ceiling_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list_item*, i8*)* @canonicalize_ceiling_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_ceiling_entry(%struct.string_list_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.string_list_item* %0, %struct.string_list_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %12 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @is_absolute_path(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %43

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %43

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @real_pathdup(i8* %30, i32 0)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %37 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %42 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %34, %28, %23, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i8* @real_pathdup(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
