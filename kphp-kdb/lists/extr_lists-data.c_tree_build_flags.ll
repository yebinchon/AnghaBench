; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_build_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_build_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.tree_payload = type { i64, i64, i64, i64 }

@LF_BIGFLAGS = common dso_local global i32 0, align 4
@new_flags = common dso_local global i32 0, align 4
@LF_HAVE_VALUES = common dso_local global i32 0, align 4
@LF_HAVE_DATES = common dso_local global i32 0, align 4
@OTree = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LF_HAVE_TEXTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tree_build_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_build_flags(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.tree_payload*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.tree_payload* @LPAYLOAD(i32* %5)
  store %struct.tree_payload* %6, %struct.tree_payload** %3, align 8
  %7 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %8 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp uge i32 %10, 256
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @LF_BIGFLAGS, align 4
  %14 = load i32, i32* @new_flags, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @new_flags, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %18 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @LF_HAVE_VALUES, align 4
  %23 = load i32, i32* @new_flags, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @new_flags, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %27 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @LF_HAVE_DATES, align 4
  %32 = load i32, i32* @new_flags, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @new_flags, align 4
  br label %34

34:                                               ; preds = %30, %25
  store i32 -1, i32* %4, align 4
  %35 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %36 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %41 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @get_text_len(i64 %42)
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %34
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OTree, i32 0, i32 0), align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i64 @NODE_RPOS(i32* %46)
  %48 = sub nsw i64 %45, %47
  %49 = call i32 @metafile_get_text(i64 %48, i32* %4)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %4, align 4
  %52 = icmp sge i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @LF_HAVE_TEXTS, align 4
  %59 = load i32, i32* @new_flags, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @new_flags, align 4
  br label %61

61:                                               ; preds = %57, %50
  ret i32 0
}

declare dso_local %struct.tree_payload* @LPAYLOAD(i32*) #1

declare dso_local i32 @get_text_len(i64) #1

declare dso_local i32 @metafile_get_text(i64, i32*) #1

declare dso_local i64 @NODE_RPOS(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
