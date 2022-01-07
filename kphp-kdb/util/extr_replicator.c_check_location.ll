; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_binlog = type { i8*, %struct.location_list_entry* }
%struct.location_list_entry = type { i32, i8*, %struct.location_list_entry* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error: binlog %s has %d local locations:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"error: binlog %s has no master location\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"error: binlog %s has %d master locations:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_location(%struct.remote_binlog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.remote_binlog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.location_list_entry*, align 8
  store %struct.remote_binlog* %0, %struct.remote_binlog** %3, align 8
  %7 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %8 = call i32 @assert(%struct.remote_binlog* %7)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %10 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %9, i32 0, i32 1
  %11 = load %struct.location_list_entry*, %struct.location_list_entry** %10, align 8
  store %struct.location_list_entry* %11, %struct.location_list_entry** %6, align 8
  br label %12

12:                                               ; preds = %34, %1
  %13 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %14 = icmp ne %struct.location_list_entry* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %17 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %26 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %24
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %36 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %35, i32 0, i32 2
  %37 = load %struct.location_list_entry*, %struct.location_list_entry** %36, align 8
  store %struct.location_list_entry* %37, %struct.location_list_entry** %6, align 8
  br label %12

38:                                               ; preds = %12
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %44 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46)
  %48 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %49 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %48, i32 0, i32 1
  %50 = load %struct.location_list_entry*, %struct.location_list_entry** %49, align 8
  store %struct.location_list_entry* %50, %struct.location_list_entry** %6, align 8
  br label %51

51:                                               ; preds = %67, %41
  %52 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %53 = icmp ne %struct.location_list_entry* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %56 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @stderr, align 4
  %62 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %63 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %69 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %68, i32 0, i32 2
  %70 = load %struct.location_list_entry*, %struct.location_list_entry** %69, align 8
  store %struct.location_list_entry* %70, %struct.location_list_entry** %6, align 8
  br label %51

71:                                               ; preds = %51
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %120

74:                                               ; preds = %38
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %80 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  store i32 1, i32* %2, align 4
  br label %120

83:                                               ; preds = %74
  %84 = load i32, i32* %5, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %119

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %89 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %90, i32 %91)
  %93 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %94 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %93, i32 0, i32 1
  %95 = load %struct.location_list_entry*, %struct.location_list_entry** %94, align 8
  store %struct.location_list_entry* %95, %struct.location_list_entry** %6, align 8
  br label %96

96:                                               ; preds = %112, %86
  %97 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %98 = icmp ne %struct.location_list_entry* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %101 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32, i32* @stderr, align 4
  %107 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %108 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %105, %99
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.location_list_entry*, %struct.location_list_entry** %6, align 8
  %114 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %113, i32 0, i32 2
  %115 = load %struct.location_list_entry*, %struct.location_list_entry** %114, align 8
  store %struct.location_list_entry* %115, %struct.location_list_entry** %6, align 8
  br label %96

116:                                              ; preds = %96
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %120

119:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %116, %77, %71
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @assert(%struct.remote_binlog*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
