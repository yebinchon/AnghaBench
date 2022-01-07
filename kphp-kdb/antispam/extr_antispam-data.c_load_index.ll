; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-data.c_load_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-data.c_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"$1load_index: $2started (%s)...$^\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Index == 0\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Index != 0\00", align 1
@FALSE = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"$1load_index: $2%sloaded!$^\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"empty index \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @load_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_index(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @verbosity, align 4
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %12 = call i32 @st_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @load_header(i32* %14, %struct.TYPE_3__* %4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @jump_log_ts, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @jump_log_pos, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @jump_log_crc32, align 4
  %26 = load i32, i32* @verbosity, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %33 = call i32 @st_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %28, %19
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @st_printf(i8*, i8*) #1

declare dso_local i32 @load_header(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
