; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_parse_want.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_parse_want.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_writer = type { i32 }
%struct.object_array = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"want \00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"git upload-pack: protocol error, expected to get oid, not '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"upload-pack: not our ref %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"git upload-pack: not our ref %s\00", align 1
@WANTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_writer*, i8*, %struct.object_array*)* @parse_want to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_want(%struct.packet_writer* %0, i8* %1, %struct.object_array* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_writer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_array*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca %struct.object*, align 8
  store %struct.packet_writer* %0, %struct.packet_writer** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_array* %2, %struct.object_array** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @skip_prefix(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @get_oid_hex(i8* %15, %struct.object_id* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* @the_repository, align 4
  %23 = call %struct.object* @parse_object(i32 %22, %struct.object_id* %9)
  store %struct.object* %23, %struct.object** %10, align 8
  %24 = load %struct.object*, %struct.object** %10, align 8
  %25 = icmp ne %struct.object* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.packet_writer*, %struct.packet_writer** %5, align 8
  %28 = call i8* @oid_to_hex(%struct.object_id* %9)
  %29 = call i32 @packet_writer_error(%struct.packet_writer* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = call i8* @oid_to_hex(%struct.object_id* %9)
  %31 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.object*, %struct.object** %10, align 8
  %34 = getelementptr inbounds %struct.object, %struct.object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WANTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @WANTED, align 4
  %41 = load %struct.object*, %struct.object** %10, align 8
  %42 = getelementptr inbounds %struct.object, %struct.object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.object*, %struct.object** %10, align 8
  %46 = load %struct.object_array*, %struct.object_array** %7, align 8
  %47 = call i32 @add_object_array(%struct.object* %45, i32* null, %struct.object_array* %46)
  br label %48

48:                                               ; preds = %39, %32
  store i32 1, i32* %4, align 4
  br label %50

49:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @packet_writer_error(%struct.packet_writer*, i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @add_object_array(%struct.object*, i32*, %struct.object_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
