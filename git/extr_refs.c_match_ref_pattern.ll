; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_match_ref_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_match_ref_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.string_list_item*)* @match_ref_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_ref_pattern(i8* %0, %struct.string_list_item* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.string_list_item* %1, %struct.string_list_item** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %8 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %13 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @wildmatch(i32 %14, i8* %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %11
  br label %38

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %23 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @skip_prefix(i8* %21, i32 %24, i8** %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %27
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %31, %20
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @wildmatch(i32, i8*, i32) #1

declare dso_local i64 @skip_prefix(i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
