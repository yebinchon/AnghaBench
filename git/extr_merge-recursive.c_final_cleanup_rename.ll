; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_final_cleanup_rename.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_final_cleanup_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rename* }
%struct.rename = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*)* @final_cleanup_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @final_cleanup_rename(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca %struct.rename*, align 8
  %4 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %5 = load %struct.string_list*, %struct.string_list** %2, align 8
  %6 = icmp eq %struct.string_list* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %28, %8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.string_list*, %struct.string_list** %2, align 8
  %12 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.string_list*, %struct.string_list** %2, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.rename*, %struct.rename** %22, align 8
  store %struct.rename* %23, %struct.rename** %3, align 8
  %24 = load %struct.rename*, %struct.rename** %3, align 8
  %25 = getelementptr inbounds %struct.rename, %struct.rename* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @diff_free_filepair(i32 %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.string_list*, %struct.string_list** %2, align 8
  %33 = call i32 @string_list_clear(%struct.string_list* %32, i32 1)
  %34 = load %struct.string_list*, %struct.string_list** %2, align 8
  %35 = call i32 @free(%struct.string_list* %34)
  br label %36

36:                                               ; preds = %31, %7
  ret void
}

declare dso_local i32 @diff_free_filepair(i32) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
