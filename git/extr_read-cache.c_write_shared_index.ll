; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_write_shared_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_write_shared_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.split_index* }
%struct.split_index = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tempfile = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"shared/do_write_index\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"cannot fix permission bits on '%s'\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"sharedindex.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.tempfile**)* @write_shared_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_shared_index(%struct.index_state* %0, %struct.tempfile** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.tempfile**, align 8
  %6 = alloca %struct.split_index*, align 8
  %7 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.tempfile** %1, %struct.tempfile*** %5, align 8
  %8 = load %struct.index_state*, %struct.index_state** %4, align 8
  %9 = getelementptr inbounds %struct.index_state, %struct.index_state* %8, i32 0, i32 0
  %10 = load %struct.split_index*, %struct.split_index** %9, align 8
  store %struct.split_index* %10, %struct.split_index** %6, align 8
  %11 = load %struct.index_state*, %struct.index_state** %4, align 8
  %12 = call i32 @move_cache_to_base_index(%struct.index_state* %11)
  %13 = load i32, i32* @the_repository, align 4
  %14 = load %struct.tempfile**, %struct.tempfile*** %5, align 8
  %15 = load %struct.tempfile*, %struct.tempfile** %14, align 8
  %16 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace2_region_enter_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.split_index*, %struct.split_index** %6, align 8
  %21 = getelementptr inbounds %struct.split_index, %struct.split_index* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.tempfile**, %struct.tempfile*** %5, align 8
  %24 = load %struct.tempfile*, %struct.tempfile** %23, align 8
  %25 = call i32 @do_write_index(%struct.TYPE_4__* %22, %struct.tempfile* %24, i32 1)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @the_repository, align 4
  %27 = load %struct.tempfile**, %struct.tempfile*** %5, align 8
  %28 = load %struct.tempfile*, %struct.tempfile** %27, align 8
  %29 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @trace2_region_leave_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %78

37:                                               ; preds = %2
  %38 = load %struct.tempfile**, %struct.tempfile*** %5, align 8
  %39 = load %struct.tempfile*, %struct.tempfile** %38, align 8
  %40 = call i32 @get_tempfile_path(%struct.tempfile* %39)
  %41 = call i32 @adjust_shared_perm(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.tempfile**, %struct.tempfile*** %5, align 8
  %47 = load %struct.tempfile*, %struct.tempfile** %46, align 8
  %48 = call i32 @get_tempfile_path(%struct.tempfile* %47)
  %49 = call i32 @error(i32 %45, i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %37
  %52 = load %struct.tempfile**, %struct.tempfile*** %5, align 8
  %53 = load %struct.split_index*, %struct.split_index** %6, align 8
  %54 = getelementptr inbounds %struct.split_index, %struct.split_index* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @oid_to_hex(i32* %56)
  %58 = call i32 @git_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = call i32 @rename_tempfile(%struct.tempfile** %52, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %51
  %63 = load %struct.split_index*, %struct.split_index** %6, align 8
  %64 = getelementptr inbounds %struct.split_index, %struct.split_index* %63, i32 0, i32 1
  %65 = load %struct.split_index*, %struct.split_index** %6, align 8
  %66 = getelementptr inbounds %struct.split_index, %struct.split_index* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @oidcpy(i32* %64, i32* %68)
  %70 = load %struct.split_index*, %struct.split_index** %6, align 8
  %71 = getelementptr inbounds %struct.split_index, %struct.split_index* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @oid_to_hex(i32* %73)
  %75 = call i32 @clean_shared_index_files(i32 %74)
  br label %76

76:                                               ; preds = %62, %51
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %44, %35
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @move_cache_to_base_index(%struct.index_state*) #1

declare dso_local i32 @trace2_region_enter_printf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @do_write_index(%struct.TYPE_4__*, %struct.tempfile*, i32) #1

declare dso_local i32 @trace2_region_leave_printf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @adjust_shared_perm(i32) #1

declare dso_local i32 @get_tempfile_path(%struct.tempfile*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @rename_tempfile(%struct.tempfile**, i32) #1

declare dso_local i32 @git_path(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @clean_shared_index_files(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
