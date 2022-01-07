; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_grab_objectname.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_grab_objectname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.atom_value = type { i8* }
%struct.used_atom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"objectname\00", align 1
@O_SHORT = common dso_local global i64 0, align 8
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@O_FULL = common dso_local global i64 0, align 8
@O_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown %%(objectname) option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, %struct.atom_value*, %struct.used_atom*)* @grab_objectname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_objectname(i8* %0, %struct.object_id* %1, %struct.atom_value* %2, %struct.used_atom* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.atom_value*, align 8
  %9 = alloca %struct.used_atom*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.atom_value* %2, %struct.atom_value** %8, align 8
  store %struct.used_atom* %3, %struct.used_atom** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @starts_with(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %4
  %14 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %15 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @O_SHORT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.object_id*, %struct.object_id** %7, align 8
  %23 = load i32, i32* @DEFAULT_ABBREV, align 4
  %24 = call i32 @find_unique_abbrev(%struct.object_id* %22, i32 %23)
  %25 = call i8* @xstrdup(i32 %24)
  %26 = load %struct.atom_value*, %struct.atom_value** %8, align 8
  %27 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  store i32 1, i32* %5, align 4
  br label %67

28:                                               ; preds = %13
  %29 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %30 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @O_FULL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.object_id*, %struct.object_id** %7, align 8
  %38 = call i32 @oid_to_hex(%struct.object_id* %37)
  %39 = call i8* @xstrdup(i32 %38)
  %40 = load %struct.atom_value*, %struct.atom_value** %8, align 8
  %41 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  store i32 1, i32* %5, align 4
  br label %67

42:                                               ; preds = %28
  %43 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %44 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @O_LENGTH, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.object_id*, %struct.object_id** %7, align 8
  %52 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %53 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @find_unique_abbrev(%struct.object_id* %51, i32 %56)
  %58 = call i8* @xstrdup(i32 %57)
  %59 = load %struct.atom_value*, %struct.atom_value** %8, align 8
  %60 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  store i32 1, i32* %5, align 4
  br label %67

61:                                               ; preds = %42
  %62 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %4
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %50, %36, %21
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @find_unique_abbrev(%struct.object_id*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
