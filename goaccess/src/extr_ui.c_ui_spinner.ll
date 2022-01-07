; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_ui_spinner.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_ui_spinner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64*, i32, i32, i32, i32, %struct.TYPE_9__* (...)*, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ui_spinner.spin_chars = internal constant [5 x i8] c"/-\\|\00", align 1
@SPIN_LBL = common dso_local global i32 0, align 4
@SPN_END = common dso_local global i64 0, align 8
@conf = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SPIN_FMT = common dso_local global i8* null, align 8
@SPIN_FMTM = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0D\00", align 1
@SPIN_UPDATE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ui_spinner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_spinner(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  %13 = load i32, i32* @SPIN_LBL, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_9__* (...)*, %struct.TYPE_9__* (...)** %23, align 8
  %25 = call %struct.TYPE_9__* (...) %24()
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %4, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = call i64 @time(i64* %10)
  br label %28

28:                                               ; preds = %160, %26
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = call i32 @pthread_mutex_lock(i32* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPN_END, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 9
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conf, i32 0, i32 0), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43, %38
  br label %166

50:                                               ; preds = %29
  %51 = load i32, i32* @LC_NUMERIC, align 4
  %52 = call i32 @setlocale(i32 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conf, i32 0, i32 0), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = trunc i64 %14 to i32
  %57 = load i8*, i8** @SPIN_FMT, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %16, i32 %56, i8* %57, i32 %60)
  br label %89

62:                                               ; preds = %50
  %63 = call i64 @time(i64* null)
  %64 = load i64, i64* %10, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp sge i64 %66, 1
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sdiv i64 %72, %73
  br label %76

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %68
  %77 = phi i64 [ %74, %68 ], [ 0, %75 ]
  store i64 %77, i64* %9, align 8
  %78 = trunc i64 %14 to i32
  %79 = load i8*, i8** @SPIN_FMTM, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %16, i32 %78, i8* %79, i32 %82, i64 %86, i64 %87)
  br label %89

89:                                               ; preds = %76, %55
  %90 = load i32, i32* @LC_NUMERIC, align 4
  %91 = call i32 @setlocale(i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 9
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %153

96:                                               ; preds = %89
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_9__* (...)*, %struct.TYPE_9__* (...)** %110, align 8
  %112 = call i32 @draw_header(i32 %99, i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %105, i32 %108, %struct.TYPE_9__* (...)* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @COLOR_PAIR(i32 %120)
  %122 = call i32 @wattron(i32 %115, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = and i32 %132, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [5 x i8], [5 x i8]* @ui_spinner.spin_chars, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = call i32 @mvwaddch(i32 %125, i32 %128, i32 %131, i8 signext %137)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @COLOR_PAIR(i32 %146)
  %148 = call i32 @wattroff(i32 %141, i32 %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @wrefresh(i32 %151)
  br label %160

153:                                              ; preds = %89
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conf, i32 0, i32 0), align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159, %96
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  %163 = call i32 @pthread_mutex_unlock(i32* %162)
  %164 = load i32, i32* @SPIN_UPDATE_INTERVAL, align 4
  %165 = call i32 @usleep(i32 %164)
  br label %28

166:                                              ; preds = %49
  %167 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %167)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @time(i64*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @draw_header(i32, i8*, i8*, i32, i32, i32, %struct.TYPE_9__* (...)*) #2

declare dso_local i32 @wattron(i32, i32) #2

declare dso_local i32 @COLOR_PAIR(i32) #2

declare dso_local i32 @mvwaddch(i32, i32, i32, i8 signext) #2

declare dso_local i32 @wattroff(i32, i32) #2

declare dso_local i32 @wrefresh(i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @usleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
