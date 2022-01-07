; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_normal.c_normal_fmt_prepare.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_normal.c_normal_fmt_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.tr2_tbuf = type { i32 }

@tr2env_normal_be_brief = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s:%d \00", align 1
@TR2FMT_NORMAL_FL_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.strbuf*)* @normal_fmt_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normal_fmt_prepare(i8* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.tr2_tbuf, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %9 = call i32 @strbuf_setlen(%struct.strbuf* %8, i32 0)
  %10 = load i32, i32* @tr2env_normal_be_brief, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %3
  %13 = call i32 @tr2_tbuf_local_time(%struct.tr2_tbuf* %7)
  %14 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %15 = getelementptr inbounds %struct.tr2_tbuf, %struct.tr2_tbuf* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strbuf_addstr(%struct.strbuf* %14, i32 %16)
  %18 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %19 = call i32 @strbuf_addch(%struct.strbuf* %18, i8 signext 32)
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @strbuf_addf(%struct.strbuf* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22, %12
  br label %33

33:                                               ; preds = %39, %32
  %34 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TR2FMT_NORMAL_FL_WIDTH, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %41 = call i32 @strbuf_addch(%struct.strbuf* %40, i8 signext 32)
  br label %33

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %3
  ret void
}

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @tr2_tbuf_local_time(%struct.tr2_tbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
