; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_json.c_print_json_summary.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_json.c_print_json_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GENER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @print_json_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_json_summary(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @GENER_ID, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @popen_obj_attr(i32* %13, i32 %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @poverall_start_end_date(i32* %17, i32* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @poverall_datetime(i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @poverall_requests(i32* %24, i32* %25, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @poverall_valid_reqs(i32* %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @poverall_invalid_reqs(i32* %32, i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @poverall_processed_time(i32* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @poverall_visitors(i32* %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @poverall_files(i32* %42, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @poverall_excluded(i32* %45, i32* %46, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @poverall_refs(i32* %49, i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @poverall_notfound(i32* %52, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @poverall_static_files(i32* %55, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @poverall_log_size(i32* %58, i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @poverall_bandwidth(i32* %61, i32* %62, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @poverall_log(i32* %65, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 (...) @num_panels()
  %71 = icmp sgt i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 1
  %74 = call i32 @pclose_obj(i32* %68, i32 %69, i32 %73)
  ret void
}

declare dso_local i32 @popen_obj_attr(i32*, i32, i32) #1

declare dso_local i32 @poverall_start_end_date(i32*, i32*, i32) #1

declare dso_local i32 @poverall_datetime(i32*, i32) #1

declare dso_local i32 @poverall_requests(i32*, i32*, i32) #1

declare dso_local i32 @poverall_valid_reqs(i32*, i32*, i32) #1

declare dso_local i32 @poverall_invalid_reqs(i32*, i32*, i32) #1

declare dso_local i32 @poverall_processed_time(i32*, i32) #1

declare dso_local i32 @poverall_visitors(i32*, i32) #1

declare dso_local i32 @poverall_files(i32*, i32) #1

declare dso_local i32 @poverall_excluded(i32*, i32*, i32) #1

declare dso_local i32 @poverall_refs(i32*, i32) #1

declare dso_local i32 @poverall_notfound(i32*, i32) #1

declare dso_local i32 @poverall_static_files(i32*, i32) #1

declare dso_local i32 @poverall_log_size(i32*, i32) #1

declare dso_local i32 @poverall_bandwidth(i32*, i32*, i32) #1

declare dso_local i32 @poverall_log(i32*, i32) #1

declare dso_local i32 @pclose_obj(i32*, i32, i32) #1

declare dso_local i64 @num_panels(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
