; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_init_revlist_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_init_revlist_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Loading revlist iterator at metafile %d of %d\0A\00", align 1
@tot_revlist_metafiles = common dso_local global i32 0, align 4
@revlist_iterator = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RData = common dso_local global i32 0, align 4
@idx_list_entries = common dso_local global i32 0, align 4
@object_list_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_revlist_iterator(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @tot_revlist_metafiles, align 4
  %8 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 1), align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 2), align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @tot_revlist_metafiles, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 3), align 4
  store i32 0, i32* %3, align 4
  br label %65

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @RData, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 5), align 4
  %24 = load i32, i32* @idx_list_entries, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 4), align 4
  br label %45

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @check_revlist_metafile_loaded(i32 %26, i32 -1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @prepare_object_metafile_num(i32 %30, i32 -1)
  %32 = icmp sge i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @get_revlist_metafile_ptr(i32 %36)
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 5), align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @get_revlist_metafile_offset(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @get_revlist_metafile_offset(i32 %41)
  %43 = sub nsw i32 %40, %42
  %44 = ashr i32 %43, 3
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 4), align 4
  br label %45

45:                                               ; preds = %35, %22
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 4), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 1), align 4
  %48 = icmp sle i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 3), align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 3), align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @init_revlist_iterator(i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %52, %45
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 3), align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %55, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @check_revlist_metafile_loaded(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @prepare_object_metafile_num(i32, i32) #1

declare dso_local i32 @get_revlist_metafile_ptr(i32) #1

declare dso_local i32 @get_revlist_metafile_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
