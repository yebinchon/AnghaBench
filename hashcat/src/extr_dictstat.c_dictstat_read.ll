; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_dictstat.c_dictstat_read.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_dictstat.c_dictstat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: Invalid header\00", align 1
@DICTSTAT_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: Invalid header, ignoring content\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: Outdated header version, ignoring content\00", align 1
@sort_by_dictstat = common dso_local global i32 0, align 4
@MAX_DICTSTAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"There are too many entries in the %s database. You have to remove/rename it.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dictstat_read(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %125

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %125

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hc_fopen(i32* %5, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %125

36:                                               ; preds = %29
  %37 = call i64 @hc_fread(i32* %6, i32 4, i32 1, i32* %5)
  store i64 %37, i64* %8, align 8
  %38 = call i64 @hc_fread(i32* %7, i32 4, i32 1, i32* %5)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @event_log_error(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = call i32 @hc_fclose(i32* %5)
  br label %125

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @byte_swap_64(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @byte_swap_64(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %57, -256
  %59 = load i32, i32* @DICTSTAT_VERSION, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %60, -256
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @event_log_error(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = call i32 @hc_fclose(i32* %5)
  br label %125

70:                                               ; preds = %51
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @event_log_error(%struct.TYPE_8__* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = call i32 @hc_fclose(i32* %5)
  br label %125

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 255
  %83 = load i32, i32* @DICTSTAT_VERSION, align 4
  %84 = and i32 %83, 255
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @event_log_warning(%struct.TYPE_8__* %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = call i32 @hc_fclose(i32* %5)
  br label %125

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %122, %102, %93
  %95 = call i32 @hc_feof(i32* %5)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %98, label %123

98:                                               ; preds = %94
  %99 = call i64 @hc_fread(i32* %10, i32 4, i32 1, i32* %5)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %94

103:                                              ; preds = %98
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* @sort_by_dictstat, align 4
  %110 = call i32 @lsearch(i32* %10, i32 %106, i32* %108, i32 4, i32 %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MAX_DICTSTAT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %103
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @event_log_error(%struct.TYPE_8__* %117, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  br label %123

122:                                              ; preds = %103
  br label %94

123:                                              ; preds = %116, %94
  %124 = call i32 @hc_fclose(i32* %5)
  br label %125

125:                                              ; preds = %123, %86, %73, %63, %44, %35, %28, %22
  ret void
}

declare dso_local i32 @hc_fopen(i32*, i32, i8*) #1

declare dso_local i64 @hc_fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @byte_swap_64(i32) #1

declare dso_local i32 @event_log_warning(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i32 @lsearch(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
