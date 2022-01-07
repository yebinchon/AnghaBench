; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_potfile.c_potfile_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_potfile.c_potfile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i8*, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s/hashcat.potfile\00", align 1
@HCBUFSIZ_LARGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s/hashcat.pot\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Old potfile detected: %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"New potfile is: %s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @potfile_init(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %6, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %7, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %157

30:                                               ; preds = %1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %157

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %157

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %157

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %157

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %157

60:                                               ; preds = %54
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %157

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %157

72:                                               ; preds = %66
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %157

78:                                               ; preds = %72
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %157

84:                                               ; preds = %78
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %157

90:                                               ; preds = %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 10
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @hc_asprintf(i8** %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %117

107:                                              ; preds = %90
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 10
  %110 = load i32*, i32** %109, align 8
  %111 = call i8* @hcstrdup(i32* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %107, %97
  %118 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %119 = call i64 @hcmalloc(i32 %118)
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %8, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  store i32* %121, i32** %123, align 8
  %124 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %125 = call i64 @hcmalloc(i32 %124)
  %126 = inttoptr i64 %125 to i32*
  store i32* %126, i32** %9, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 10
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %156

134:                                              ; preds = %117
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @hc_asprintf(i8** %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 @hc_path_exist(i8* %139)
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %153

142:                                              ; preds = %134
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_warning(%struct.TYPE_13__* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_warning(%struct.TYPE_13__* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %152 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_warning(%struct.TYPE_13__* %151, i8* null)
  br label %153

153:                                              ; preds = %142, %134
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 @hcfree(i8* %154)
  br label %156

156:                                              ; preds = %153, %117
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @hc_asprintf(i8**, i8*, i32) #1

declare dso_local i8* @hcstrdup(i32*) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @hc_path_exist(i8*) #1

declare dso_local i32 @event_log_warning(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
