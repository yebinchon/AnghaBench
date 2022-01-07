; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_conn_pr_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_conn_pr_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%union.drbd_state = type { i32 }

@CS_DC_SUSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"susp( %d -> %d ) \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_connection*, i32, i32, i32)* @conn_pr_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_pr_state_change(%struct.drbd_connection* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.drbd_state, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %struct.drbd_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [300 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  %12 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @print_state_change(i8* %14, i32 %17, i32 %19, i32 %15)
  %21 = load i8*, i8** %10, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %10, align 8
  %24 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_susp(i32 %25)
  %27 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_susp(i32 %28)
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @CS_DC_SUSP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @is_susp(i32 %39)
  %41 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @is_susp(i32 %42)
  %44 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i8*, i8** %10, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %36, %31, %4
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %54 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %55 = call i32 @drbd_info(%struct.drbd_connection* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %48
  ret void
}

declare dso_local i32 @print_state_change(i8*, i32, i32, i32) #1

declare dso_local i32 @is_susp(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @drbd_info(%struct.drbd_connection*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
