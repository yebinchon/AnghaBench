; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_check_non_tip.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_check_non_tip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object* }
%struct.object = type { i32 }
%struct.packet_writer = type { i32 }

@stateless_rpc = common dso_local global i32 0, align 4
@allow_unadvertised_object_request = common dso_local global i32 0, align 4
@ALLOW_REACHABLE_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"upload-pack: not our ref %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"git upload-pack: not our ref %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_array*, %struct.packet_writer*)* @check_non_tip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_non_tip(%struct.object_array* %0, %struct.packet_writer* %1) #0 {
  %3 = alloca %struct.object_array*, align 8
  %4 = alloca %struct.packet_writer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.object*, align 8
  store %struct.object_array* %0, %struct.object_array** %3, align 8
  store %struct.packet_writer* %1, %struct.packet_writer** %4, align 8
  %7 = load i32, i32* @stateless_rpc, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @allow_unadvertised_object_request, align 4
  %11 = load i32, i32* @ALLOW_REACHABLE_SHA1, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %21

15:                                               ; preds = %9, %2
  %16 = load %struct.object_array*, %struct.object_array** %3, align 8
  %17 = call i32 @has_unreachable(%struct.object_array* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %54

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %14
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %51, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.object_array*, %struct.object_array** %3, align 8
  %25 = getelementptr inbounds %struct.object_array, %struct.object_array* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.object_array*, %struct.object_array** %3, align 8
  %30 = getelementptr inbounds %struct.object_array, %struct.object_array* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.object*, %struct.object** %35, align 8
  store %struct.object* %36, %struct.object** %6, align 8
  %37 = load %struct.object*, %struct.object** %6, align 8
  %38 = call i32 @is_our_ref(%struct.object* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %28
  %41 = load %struct.packet_writer*, %struct.packet_writer** %4, align 8
  %42 = load %struct.object*, %struct.object** %6, align 8
  %43 = getelementptr inbounds %struct.object, %struct.object* %42, i32 0, i32 0
  %44 = call i32 @oid_to_hex(i32* %43)
  %45 = call i32 @packet_writer_error(%struct.packet_writer* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.object*, %struct.object** %6, align 8
  %47 = getelementptr inbounds %struct.object, %struct.object* %46, i32 0, i32 0
  %48 = call i32 @oid_to_hex(i32* %47)
  %49 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %40, %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %22

54:                                               ; preds = %19, %22
  ret void
}

declare dso_local i32 @has_unreachable(%struct.object_array*) #1

declare dso_local i32 @is_our_ref(%struct.object*) #1

declare dso_local i32 @packet_writer_error(%struct.packet_writer*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
