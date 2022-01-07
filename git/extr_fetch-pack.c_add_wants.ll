; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_add_wants.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_add_wants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i64, %struct.object_id, %struct.ref* }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }
%struct.object = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ref-in-want\00", align 1
@the_repository = common dso_local global i32 0, align 4
@COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"want %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"want-ref %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ref*, %struct.strbuf*)* @add_wants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_wants(i32 %0, %struct.ref* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ref* %1, %struct.ref** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %10 = call i32 @server_supports_feature(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %52, %3
  %12 = load %struct.ref*, %struct.ref** %5, align 8
  %13 = icmp ne %struct.ref* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  %15 = load %struct.ref*, %struct.ref** %5, align 8
  %16 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 2
  store %struct.object_id* %16, %struct.object_id** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @the_repository, align 4
  %21 = load %struct.object_id*, %struct.object_id** %8, align 8
  %22 = call %struct.object* @lookup_object(i32 %20, %struct.object_id* %21)
  store %struct.object* %22, %struct.object** %9, align 8
  %23 = icmp ne %struct.object* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.object*, %struct.object** %9, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @COMPLETE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %52

32:                                               ; preds = %24, %19, %14
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.ref*, %struct.ref** %5, align 8
  %37 = getelementptr inbounds %struct.ref, %struct.ref* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %32
  %41 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %42 = load %struct.object_id*, %struct.object_id** %8, align 8
  %43 = call i32 @oid_to_hex(%struct.object_id* %42)
  %44 = call i32 @packet_buf_write(%struct.strbuf* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %47 = load %struct.ref*, %struct.ref** %5, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @packet_buf_write(%struct.strbuf* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.ref*, %struct.ref** %5, align 8
  %54 = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 3
  %55 = load %struct.ref*, %struct.ref** %54, align 8
  store %struct.ref* %55, %struct.ref** %5, align 8
  br label %11

56:                                               ; preds = %11
  ret void
}

declare dso_local i32 @server_supports_feature(i8*, i8*, i32) #1

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #1

declare dso_local i32 @packet_buf_write(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
