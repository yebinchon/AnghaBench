; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_dst.c_tr2_dst_write_line.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_dst.c_tr2_dst_write_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr2_dst = type { i32 }
%struct.strbuf = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"unable to write trace to '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tr2_dst_write_line(%struct.tr2_dst* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.tr2_dst*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.tr2_dst* %0, %struct.tr2_dst** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %7 = call i32 @tr2_dst_get_trace_fd(%struct.tr2_dst* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %9 = call i32 @strbuf_complete_line(%struct.strbuf* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @write(i32 %10, i32 %13, i32 %16)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %34

20:                                               ; preds = %2
  %21 = call i64 (...) @tr2_dst_want_warning()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %25 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @tr2_sysenv_display_name(i32 %26)
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %23, %20
  %32 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %33 = call i32 @tr2_dst_trace_disable(%struct.tr2_dst* %32)
  br label %34

34:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @tr2_dst_get_trace_fd(%struct.tr2_dst*) #1

declare dso_local i32 @strbuf_complete_line(%struct.strbuf*) #1

declare dso_local i64 @write(i32, i32, i32) #1

declare dso_local i64 @tr2_dst_want_warning(...) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

declare dso_local i32 @tr2_sysenv_display_name(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @tr2_dst_trace_disable(%struct.tr2_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
