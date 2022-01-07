; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hashcat.c_hashcat_session_execute.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hashcat.c_hashcat_session_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__*, i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"START\00", align 1
@EVENT_OUTERLOOP_STARTING = common dso_local global i32 0, align 4
@EVENT_OUTERLOOP_FINISHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@STATUS_ABORTED_RUNTIME = common dso_local global i64 0, align 8
@STATUS_ABORTED_CHECKPOINT = common dso_local global i64 0, align 8
@STATUS_ABORTED = common dso_local global i64 0, align 8
@STATUS_QUIT = common dso_local global i64 0, align 8
@STATUS_EXHAUSTED = common dso_local global i64 0, align 8
@STATUS_CRACKED = common dso_local global i64 0, align 8
@STATUS_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashcat_session_execute(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = call i32 @time(i32* null)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = call i32 @logfile_generate_topid(%struct.TYPE_15__* %20)
  %22 = call i32 @logfile_top_msg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = call i32 @user_options_logger(%struct.TYPE_15__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = call i32 @dictstat_read(%struct.TYPE_15__* %25)
  %27 = load i32, i32* @EVENT_OUTERLOOP_STARTING, align 4
  %28 = call i32 @EVENT(i32 %27)
  store i32 -1, i32* %7, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %76

33:                                               ; preds = %1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = call i32 @outer_loop(%struct.TYPE_15__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = call i32 @myabort(%struct.TYPE_15__* %46)
  br label %48

48:                                               ; preds = %45, %40
  br label %73

49:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = call i32 @benchmark_next(%struct.TYPE_15__* %51)
  store i32 %52, i32* %8, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = call i32 @outer_loop(%struct.TYPE_15__* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = call i32 @myabort(%struct.TYPE_15__* %63)
  br label %65

65:                                               ; preds = %62, %54
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %72

71:                                               ; preds = %65
  br label %50

72:                                               ; preds = %70, %50
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  br label %101

76:                                               ; preds = %1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = call i32 @outer_loop(%struct.TYPE_15__* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %91 = call i32 @myabort(%struct.TYPE_15__* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %73
  %102 = load i32, i32* @EVENT_OUTERLOOP_FINISHED, align 4
  %103 = call i32 @EVENT(i32 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %105 = call i32 @unlink_restore(%struct.TYPE_15__* %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %107 = call i32 @dictstat_write(%struct.TYPE_15__* %106)
  %108 = call i32 @time(i32* null)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @logfile_top_uint(i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @logfile_top_uint(i32 %111)
  %113 = call i32 @logfile_top_msg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %166

116:                                              ; preds = %101
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @STATUS_ABORTED_RUNTIME, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 4, i32* %7, align 4
  br label %123

123:                                              ; preds = %122, %116
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @STATUS_ABORTED_CHECKPOINT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 3, i32* %7, align 4
  br label %130

130:                                              ; preds = %129, %123
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @STATUS_ABORTED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 2, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %130
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @STATUS_QUIT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 2, i32* %7, align 4
  br label %144

144:                                              ; preds = %143, %137
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @STATUS_EXHAUSTED, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 1, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %144
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @STATUS_CRACKED, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %157, %151
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @STATUS_ERROR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  store i32 -1, i32* %7, align 4
  br label %165

165:                                              ; preds = %164, %158
  br label %166

166:                                              ; preds = %165, %101
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @logfile_generate_topid(%struct.TYPE_15__*) #1

declare dso_local i32 @logfile_top_msg(i8*) #1

declare dso_local i32 @user_options_logger(%struct.TYPE_15__*) #1

declare dso_local i32 @dictstat_read(%struct.TYPE_15__*) #1

declare dso_local i32 @EVENT(i32) #1

declare dso_local i32 @outer_loop(%struct.TYPE_15__*) #1

declare dso_local i32 @myabort(%struct.TYPE_15__*) #1

declare dso_local i32 @benchmark_next(%struct.TYPE_15__*) #1

declare dso_local i32 @unlink_restore(%struct.TYPE_15__*) #1

declare dso_local i32 @dictstat_write(%struct.TYPE_15__*) #1

declare dso_local i32 @logfile_top_uint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
