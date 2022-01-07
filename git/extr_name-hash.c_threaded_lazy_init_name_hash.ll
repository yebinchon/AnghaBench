; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_threaded_lazy_init_name_hash.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_threaded_lazy_init_name_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.lazy_entry = type { i32, i32, i32, %struct.lazy_entry*, %struct.index_state* }
%struct.lazy_dir_thread_data = type { i32, i32, i32, %struct.lazy_dir_thread_data*, %struct.index_state* }
%struct.lazy_name_thread_data = type { i32, i32, i32, %struct.lazy_name_thread_data*, %struct.index_state* }

@HAVE_THREADS = common dso_local global i32 0, align 4
@lazy_nr_dir_threads = common dso_local global i32 0, align 4
@lazy_dir_thread_proc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to create lazy_dir thread: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to join lazy_dir_thread\00", align 1
@lazy_name_thread_proc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to create lazy_name thread: %s\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to join lazy_name thread: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*)* @threaded_lazy_init_name_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threaded_lazy_init_name_hash(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lazy_entry*, align 8
  %8 = alloca %struct.lazy_dir_thread_data*, align 8
  %9 = alloca %struct.lazy_name_thread_data*, align 8
  %10 = alloca %struct.lazy_dir_thread_data*, align 8
  %11 = alloca %struct.lazy_dir_thread_data*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %12 = load i32, i32* @HAVE_THREADS, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %156

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %16 = load %struct.index_state*, %struct.index_state** %2, align 8
  %17 = getelementptr inbounds %struct.index_state, %struct.index_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @lazy_nr_dir_threads, align 4
  %20 = call i32 @DIV_ROUND_UP(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.index_state*, %struct.index_state** %2, align 8
  %22 = getelementptr inbounds %struct.index_state, %struct.index_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.lazy_name_thread_data* @xcalloc(i32 %23, i32 32)
  %25 = bitcast %struct.lazy_name_thread_data* %24 to %struct.lazy_entry*
  store %struct.lazy_entry* %25, %struct.lazy_entry** %7, align 8
  %26 = load i32, i32* @lazy_nr_dir_threads, align 4
  %27 = call %struct.lazy_name_thread_data* @xcalloc(i32 %26, i32 32)
  %28 = bitcast %struct.lazy_name_thread_data* %27 to %struct.lazy_dir_thread_data*
  store %struct.lazy_dir_thread_data* %28, %struct.lazy_dir_thread_data** %8, align 8
  %29 = call %struct.lazy_name_thread_data* @xcalloc(i32 1, i32 32)
  store %struct.lazy_name_thread_data* %29, %struct.lazy_name_thread_data** %9, align 8
  %30 = call i32 (...) @init_dir_mutex()
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %82, %15
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @lazy_nr_dir_threads, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %31
  %36 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lazy_dir_thread_data, %struct.lazy_dir_thread_data* %36, i64 %38
  store %struct.lazy_dir_thread_data* %39, %struct.lazy_dir_thread_data** %10, align 8
  %40 = load %struct.index_state*, %struct.index_state** %2, align 8
  %41 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %10, align 8
  %42 = getelementptr inbounds %struct.lazy_dir_thread_data, %struct.lazy_dir_thread_data* %41, i32 0, i32 4
  store %struct.index_state* %40, %struct.index_state** %42, align 8
  %43 = load %struct.lazy_entry*, %struct.lazy_entry** %7, align 8
  %44 = bitcast %struct.lazy_entry* %43 to %struct.lazy_dir_thread_data*
  %45 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %10, align 8
  %46 = getelementptr inbounds %struct.lazy_dir_thread_data, %struct.lazy_dir_thread_data* %45, i32 0, i32 3
  store %struct.lazy_dir_thread_data* %44, %struct.lazy_dir_thread_data** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %10, align 8
  %49 = getelementptr inbounds %struct.lazy_dir_thread_data, %struct.lazy_dir_thread_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.index_state*, %struct.index_state** %2, align 8
  %55 = getelementptr inbounds %struct.index_state, %struct.index_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %35
  %59 = load %struct.index_state*, %struct.index_state** %2, align 8
  %60 = getelementptr inbounds %struct.index_state, %struct.index_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %35
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %10, align 8
  %65 = getelementptr inbounds %struct.lazy_dir_thread_data, %struct.lazy_dir_thread_data* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %10, align 8
  %67 = getelementptr inbounds %struct.lazy_dir_thread_data, %struct.lazy_dir_thread_data* %66, i32 0, i32 2
  %68 = load i32, i32* @lazy_dir_thread_proc, align 4
  %69 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %10, align 8
  %70 = bitcast %struct.lazy_dir_thread_data* %69 to %struct.lazy_name_thread_data*
  %71 = call i32 @pthread_create(i32* %67, i32* null, i32 %68, %struct.lazy_name_thread_data* %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %62
  %75 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = call i32 (i8*, ...) @die(i8* %77, i32 %79)
  br label %81

81:                                               ; preds = %74, %62
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %31

85:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @lazy_nr_dir_threads, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %8, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.lazy_dir_thread_data, %struct.lazy_dir_thread_data* %91, i64 %93
  store %struct.lazy_dir_thread_data* %94, %struct.lazy_dir_thread_data** %11, align 8
  %95 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %11, align 8
  %96 = getelementptr inbounds %struct.lazy_dir_thread_data, %struct.lazy_dir_thread_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pthread_join(i32 %97, i32* null)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %86

106:                                              ; preds = %86
  %107 = load %struct.index_state*, %struct.index_state** %2, align 8
  %108 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %9, align 8
  %109 = getelementptr inbounds %struct.lazy_name_thread_data, %struct.lazy_name_thread_data* %108, i32 0, i32 4
  store %struct.index_state* %107, %struct.index_state** %109, align 8
  %110 = load %struct.lazy_entry*, %struct.lazy_entry** %7, align 8
  %111 = bitcast %struct.lazy_entry* %110 to %struct.lazy_name_thread_data*
  %112 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %9, align 8
  %113 = getelementptr inbounds %struct.lazy_name_thread_data, %struct.lazy_name_thread_data* %112, i32 0, i32 3
  store %struct.lazy_name_thread_data* %111, %struct.lazy_name_thread_data** %113, align 8
  %114 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %9, align 8
  %115 = getelementptr inbounds %struct.lazy_name_thread_data, %struct.lazy_name_thread_data* %114, i32 0, i32 2
  %116 = load i32, i32* @lazy_name_thread_proc, align 4
  %117 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %9, align 8
  %118 = call i32 @pthread_create(i32* %115, i32* null, i32 %116, %struct.lazy_name_thread_data* %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %106
  %122 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @strerror(i32 %125)
  %127 = call i32 (i8*, ...) @die(i8* %124, i32 %126)
  br label %128

128:                                              ; preds = %121, %106
  %129 = load %struct.index_state*, %struct.index_state** %2, align 8
  %130 = load %struct.lazy_entry*, %struct.lazy_entry** %7, align 8
  %131 = bitcast %struct.lazy_entry* %130 to %struct.lazy_name_thread_data*
  %132 = call i32 @lazy_update_dir_ref_counts(%struct.index_state* %129, %struct.lazy_name_thread_data* %131)
  %133 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %9, align 8
  %134 = getelementptr inbounds %struct.lazy_name_thread_data, %struct.lazy_name_thread_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pthread_join(i32 %135, i32* null)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %128
  %140 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @strerror(i32 %143)
  %145 = call i32 (i8*, ...) @die(i8* %142, i32 %144)
  br label %146

146:                                              ; preds = %139, %128
  %147 = call i32 (...) @cleanup_dir_mutex()
  %148 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %9, align 8
  %149 = call i32 @free(%struct.lazy_name_thread_data* %148)
  %150 = load %struct.lazy_dir_thread_data*, %struct.lazy_dir_thread_data** %8, align 8
  %151 = bitcast %struct.lazy_dir_thread_data* %150 to %struct.lazy_name_thread_data*
  %152 = call i32 @free(%struct.lazy_name_thread_data* %151)
  %153 = load %struct.lazy_entry*, %struct.lazy_entry** %7, align 8
  %154 = bitcast %struct.lazy_entry* %153 to %struct.lazy_name_thread_data*
  %155 = call i32 @free(%struct.lazy_name_thread_data* %154)
  br label %156

156:                                              ; preds = %146, %14
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.lazy_name_thread_data* @xcalloc(i32, i32) #1

declare dso_local i32 @init_dir_mutex(...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.lazy_name_thread_data*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @lazy_update_dir_ref_counts(%struct.index_state*, %struct.lazy_name_thread_data*) #1

declare dso_local i32 @cleanup_dir_mutex(...) #1

declare dso_local i32 @free(%struct.lazy_name_thread_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
