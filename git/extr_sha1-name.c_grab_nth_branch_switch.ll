; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_grab_nth_branch_switch.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_grab_nth_branch_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.grab_nth_branch_switch_cbdata = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"checkout: moving from \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)* @grab_nth_branch_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_nth_branch_switch(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.grab_nth_branch_switch_cbdata*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.object_id* %0, %struct.object_id** %9, align 8
  store %struct.object_id* %1, %struct.object_id** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = bitcast i8* %20 to %struct.grab_nth_branch_switch_cbdata*
  store %struct.grab_nth_branch_switch_cbdata* %21, %struct.grab_nth_branch_switch_cbdata** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i64 @skip_prefix(i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %17)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i8*, i8** %17, align 8
  %27 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %18, align 8
  br label %28

28:                                               ; preds = %25, %7
  %29 = load i8*, i8** %17, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %18, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %28
  store i32 0, i32* %8, align 4
  br label %58

35:                                               ; preds = %31
  %36 = load %struct.grab_nth_branch_switch_cbdata*, %struct.grab_nth_branch_switch_cbdata** %16, align 8
  %37 = getelementptr inbounds %struct.grab_nth_branch_switch_cbdata, %struct.grab_nth_branch_switch_cbdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load i8*, i8** %18, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  store i64 %46, i64* %19, align 8
  %47 = load %struct.grab_nth_branch_switch_cbdata*, %struct.grab_nth_branch_switch_cbdata** %16, align 8
  %48 = getelementptr inbounds %struct.grab_nth_branch_switch_cbdata, %struct.grab_nth_branch_switch_cbdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strbuf_reset(i32 %49)
  %51 = load %struct.grab_nth_branch_switch_cbdata*, %struct.grab_nth_branch_switch_cbdata** %16, align 8
  %52 = getelementptr inbounds %struct.grab_nth_branch_switch_cbdata, %struct.grab_nth_branch_switch_cbdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i64, i64* %19, align 8
  %56 = call i32 @strbuf_add(i32 %53, i8* %54, i64 %55)
  store i32 1, i32* %8, align 4
  br label %58

57:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %41, %34
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strbuf_reset(i32) #1

declare dso_local i32 @strbuf_add(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
