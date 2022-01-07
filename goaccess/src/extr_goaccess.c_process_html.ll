; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_process_html.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_process_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32, i8**, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@gdns_thread = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@glog = common dso_local global %struct.TYPE_6__* null, align 8
@holder = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@gwswriter = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_html to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_html(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64* null, i64** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gdns_thread, i32 0, i32 0))
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @glog, align 8
  %7 = load i32, i32* @holder, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @output_html(%struct.TYPE_6__* %6, i32 %7, i8* %8)
  %10 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gdns_thread, i32 0, i32 0))
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 3), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %116

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @glog, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %116

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gwswriter, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = call i32 @pthread_mutex_lock(i32* %22)
  %24 = call i32 (...) @open_fifoin()
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gwswriter, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gwswriter, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gwswriter, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %116

35:                                               ; preds = %20
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 0), align 8
  %37 = call i64* @xcalloc(i32 %36, i32 8)
  store i64* %37, i64** %3, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %79, %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 0), align 8
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %38
  %43 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 1), align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 1), align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i64*, i64** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 0, i64* %66, align 8
  br label %78

67:                                               ; preds = %52, %42
  %68 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 1), align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @file_size(i8* %72)
  %74 = load i64*, i64** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %67, %62
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %38

82:                                               ; preds = %38
  %83 = call i32 (...) @set_ready_state()
  br label %84

84:                                               ; preds = %82, %107
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 2), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %109

88:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %104, %88
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 0), align 8
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i64*, i64** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 1), align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @perform_tail_follow(i64* %97, i8* %102)
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %89

107:                                              ; preds = %89
  %108 = call i32 @usleep(i32 800000)
  br label %84

109:                                              ; preds = %87
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gwswriter, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @close(i32 %112)
  %114 = load i64*, i64** %3, align 8
  %115 = call i32 @free(i64* %114)
  br label %116

116:                                              ; preds = %109, %34, %19, %13
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @output_html(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @open_fifoin(...) #1

declare dso_local i64* @xcalloc(i32, i32) #1

declare dso_local i64 @file_size(i8*) #1

declare dso_local i32 @set_ready_state(...) #1

declare dso_local i32 @perform_tail_follow(i64*, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
