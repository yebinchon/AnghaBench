; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_tag-binlog.c_tag_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_tag-binlog.c_tag_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }

@start = common dso_local global i32 0, align 4
@act = common dso_local global i8 0, align 1
@binlog_tag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR: binlog has already a tag.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"unexpected log event type %08x at position %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tag_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [33 x i8], align 16
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %9 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %64 [
    i32 129, label %11
    i32 128, label %48
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @start, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = call i32 (...) @log_cur_pos()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 24
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %26 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %31 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 4096
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24, %18
  store i32 -2, i32* %3, align 4
  br label %70

35:                                               ; preds = %29
  %36 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %37 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 3
  %40 = and i32 %39, -4
  %41 = add nsw i32 24, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 -2, i32* %3, align 4
  br label %70

46:                                               ; preds = %35
  store i32 1, i32* @start, align 4
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %70

48:                                               ; preds = %2
  %49 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @default_replay_logevent(%struct.lev_generic* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i8, i8* @act, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 105
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 0
  %57 = load i32, i32* @binlog_tag, align 4
  %58 = call i32 @convert_md5_to_hex(i8* %56, i32 %57)
  %59 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 0
  %60 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = call i32 @exit(i32 0) #3
  unreachable

62:                                               ; preds = %48
  %63 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %70

64:                                               ; preds = %2
  %65 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %66 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (...) @log_cur_pos()
  %69 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  store i32 -1, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %62, %46, %45, %34
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i32 @default_replay_logevent(%struct.lev_generic*, i32) #1

declare dso_local i32 @convert_md5_to_hex(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @kprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
