; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_cat_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_cat_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.object_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Unknown mark: %s\00", align 1
@command_buf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid dataref: %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Garbage after SHA1: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_cat_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cat_blob(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.object_entry*, align 8
  %4 = alloca %struct.object_id, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 58
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @parse_mark_ref_eol(i8* %10)
  %12 = call %struct.object_entry* @find_mark(i32 %11)
  store %struct.object_entry* %12, %struct.object_entry** %3, align 8
  %13 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %14 = icmp ne %struct.object_entry* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @command_buf, i32 0, i32 0), align 4
  %17 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %20 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @oidcpy(%struct.object_id* %4, i32* %21)
  br label %39

23:                                               ; preds = %1
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @parse_oid_hex(i8* %24, %struct.object_id* %4, i8** %2)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @command_buf, i32 0, i32 0), align 4
  %29 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %2, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @command_buf, i32 0, i32 0), align 4
  %36 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = call %struct.object_entry* @find_object(%struct.object_id* %4)
  store %struct.object_entry* %38, %struct.object_entry** %3, align 8
  br label %39

39:                                               ; preds = %37, %18
  %40 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %41 = call i32 @cat_blob(%struct.object_entry* %40, %struct.object_id* %4)
  ret void
}

declare dso_local %struct.object_entry* @find_mark(i32) #1

declare dso_local i32 @parse_mark_ref_eol(i8*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local %struct.object_entry* @find_object(%struct.object_id*) #1

declare dso_local i32 @cat_blob(%struct.object_entry*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
