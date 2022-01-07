; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-merge.c_want_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-merge.c_want_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i64 }

@LEV_TIMESTAMP = common dso_local global i32 0, align 4
@t_now = common dso_local global i64 0, align 8
@t_cutoff = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"reached binlog time %d above cutoff time %d at read position %lld\0A\00", align 1
@rd_bytes = common dso_local global i32 0, align 4
@undel_time_max = common dso_local global i64 0, align 8
@undel_time_min = common dso_local global i64 0, align 8
@LEV_LI_DEL_LIST = common dso_local global i32 0, align 4
@skip_timestamps = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @want_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @want_write(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lev_generic*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.lev_generic*
  store %struct.lev_generic* %8, %struct.lev_generic** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LEV_TIMESTAMP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %14 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @t_now, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %20 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* @t_now, align 8
  %22 = load i64, i64* @t_now, align 8
  %23 = load i64, i64* @t_cutoff, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @mode, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  store i32 1, i32* @mode, align 4
  %29 = load i32, i32* @stderr, align 4
  %30 = load i64, i64* @t_now, align 8
  %31 = load i64, i64* @t_cutoff, align 8
  %32 = load i32, i32* @rd_bytes, align 4
  %33 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %25, %18
  br label %35

35:                                               ; preds = %34, %12, %2
  %36 = load i64, i64* @t_now, align 8
  %37 = load i64, i64* @undel_time_max, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i64, i64* @t_now, align 8
  %41 = load i64, i64* @undel_time_min, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @LEV_LI_DEL_LIST, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %39, %35
  %49 = load i64, i64* @undel_time_max, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %62

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @LEV_TIMESTAMP, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @skip_timestamps, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %62

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @mode, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %59, %51, %43
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
