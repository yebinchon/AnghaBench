; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_all_postponed.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_all_postponed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@postponed = common dso_local global i64* null, align 8
@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@metafile_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_all_postponed() #0 {
  %1 = alloca i32, align 4
  %2 = load i64*, i64** @postponed, align 8
  %3 = icmp ne i64* %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  br label %50

10:                                               ; preds = %0
  %11 = load i64*, i64** @postponed, align 8
  %12 = ptrtoint i64* %11 to i32
  %13 = call i32 @assert(i32 %12)
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %47, %10
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load i64*, i64** @postponed, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @prepare_list_metafile_num(i32 %26, i32 -1)
  %28 = icmp sge i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i64*, i64** @postponed, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i32, i32* @metafile_mode, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @FLI_ENTRY_LIST_ID(i32 %43)
  %45 = call i32 @mark_list_metafile(i32 %44)
  br label %46

46:                                               ; preds = %42, %38, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %14

50:                                               ; preds = %4, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @prepare_list_metafile_num(i32, i32) #1

declare dso_local i32 @mark_list_metafile(i32) #1

declare dso_local i32 @FLI_ENTRY_LIST_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
