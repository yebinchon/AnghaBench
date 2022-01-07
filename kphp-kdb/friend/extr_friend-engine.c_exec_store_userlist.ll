; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_store_userlist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_store_userlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keep_mc_header = type { i32, i32 }
%struct.connection = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"userlist%d%n\00", align 1
@userlist = common dso_local global %struct.keep_mc_header* null, align 8
@MAX_USERLIST_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_store_userlist(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.keep_mc_header, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %10)
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %4
  %23 = load %struct.connection*, %struct.connection** %6, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 1
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @advance_skip_read_ptr(i32* %24, i32 %25)
  store i32 0, i32* %5, align 4
  br label %55

27:                                               ; preds = %19
  %28 = load %struct.keep_mc_header*, %struct.keep_mc_header** @userlist, align 8
  %29 = load i32, i32* @MAX_USERLIST_NUM, align 4
  %30 = load %struct.connection*, %struct.connection** %6, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 1
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @np_news_parse_list(%struct.keep_mc_header* %28, i32 %29, i32 1, i32* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %55

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds %struct.keep_mc_header, %struct.keep_mc_header* %13, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds %struct.keep_mc_header, %struct.keep_mc_header* %13, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.connection*, %struct.connection** %6, align 8
  %43 = call i32 @init_tmp_buffers(%struct.connection* %42)
  %44 = load %struct.connection*, %struct.connection** %6, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @write_out(i32 %46, %struct.keep_mc_header* %13, i32 8)
  %48 = load %struct.connection*, %struct.connection** %6, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.keep_mc_header*, %struct.keep_mc_header** @userlist, align 8
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 %52, 4
  %54 = call i32 @write_out(i32 %50, %struct.keep_mc_header* %51, i32 %53)
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %37, %36, %22
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @advance_skip_read_ptr(i32*, i32) #1

declare dso_local i32 @np_news_parse_list(%struct.keep_mc_header*, i32, i32, i32*, i32) #1

declare dso_local i32 @init_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @write_out(i32, %struct.keep_mc_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
