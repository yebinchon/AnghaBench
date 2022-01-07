; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_treeish_dataref.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_treeish_dataref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.object_entry = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Unknown mark: %s\00", align 1
@command_buf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid dataref: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Missing space after tree-ish: %s\00", align 1
@OBJ_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_entry* (i8**)* @parse_treeish_dataref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_entry* @parse_treeish_dataref(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.object_id, align 4
  %4 = alloca %struct.object_entry*, align 8
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 58
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i8**, i8*** %2, align 8
  %12 = call i32 @parse_mark_ref_space(i8** %11)
  %13 = call %struct.object_entry* @find_mark(i32 %12)
  store %struct.object_entry* %13, %struct.object_entry** %4, align 8
  %14 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %15 = icmp ne %struct.object_entry* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @command_buf, i32 0, i32 0), align 4
  %18 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %10
  %20 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %21 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @oidcpy(%struct.object_id* %3, i32* %22)
  br label %45

24:                                               ; preds = %1
  %25 = load i8**, i8*** %2, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %2, align 8
  %28 = call i64 @parse_oid_hex(i8* %26, %struct.object_id* %3, i8** %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @command_buf, i32 0, i32 0), align 4
  %32 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = call %struct.object_entry* @find_object(%struct.object_id* %3)
  store %struct.object_entry* %34, %struct.object_entry** %4, align 8
  %35 = load i8**, i8*** %2, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %35, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 32
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @command_buf, i32 0, i32 0), align 4
  %43 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44, %19
  br label %46

46:                                               ; preds = %57, %45
  %47 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %48 = icmp ne %struct.object_entry* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %51 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OBJ_TREE, align 8
  %54 = icmp ne i64 %52, %53
  br label %55

55:                                               ; preds = %49, %46
  %56 = phi i1 [ true, %46 ], [ %54, %49 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %59 = call %struct.object_entry* @dereference(%struct.object_entry* %58, %struct.object_id* %3)
  store %struct.object_entry* %59, %struct.object_entry** %4, align 8
  br label %46

60:                                               ; preds = %55
  %61 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  ret %struct.object_entry* %61
}

declare dso_local %struct.object_entry* @find_mark(i32) #1

declare dso_local i32 @parse_mark_ref_space(i8**) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local %struct.object_entry* @find_object(%struct.object_id*) #1

declare dso_local %struct.object_entry* @dereference(%struct.object_entry*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
