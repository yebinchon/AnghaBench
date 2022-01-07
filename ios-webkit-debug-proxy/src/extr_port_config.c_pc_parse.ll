; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_port_config.c_pc_parse.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_port_config.c_pc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [88 x i8] c"^[ \09]*(([a-fA-F0-9-]{25,}|\\*|null)[ \09]*:?|:)[ \09]*(-?[0-9]+)([ \09]*-[ \09]*([0-9]+))?[ \09]*$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Internal error: bad regex?\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pc_parse(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %6
  %28 = call %struct.TYPE_10__* @malloc(i32 4)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i32, i32* @REG_EXTENDED, align 4
  %35 = load i32, i32* @REG_ICASE, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @regcomp(%struct.TYPE_10__* %33, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %157

41:                                               ; preds = %27
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i8* @calloc(i64 %49, i32 16)
  %51 = bitcast i8* %50 to %struct.TYPE_8__*
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  br label %54

54:                                               ; preds = %41, %6
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %15, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %16, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  %67 = call i8* @calloc(i64 %66, i32 1)
  store i8* %67, i8** %17, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @memcpy(i8* %68, i8* %69, i64 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %78 = call i32 @regexec(%struct.TYPE_10__* %74, i8* %75, i64 %76, %struct.TYPE_8__* %77, i32 0)
  store i32 %78, i32* %18, align 4
  %79 = load i8*, i8** %17, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %54
  store i32 -1, i32* %7, align 4
  br label %157

84:                                               ; preds = %54
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %94, %98
  store i64 %99, i64* %20, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = load i64, i64* %20, align 8
  %107 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %90
  %110 = load i8*, i8** %9, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i64, i64* %20, align 8
  %117 = call i8* @strndup(i8* %115, i64 %116)
  store i8* %117, i8** %19, align 8
  br label %119

118:                                              ; preds = %90
  store i8* null, i8** %19, align 8
  br label %119

119:                                              ; preds = %118, %109
  br label %122

120:                                              ; preds = %84
  %121 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %121, i8** %19, align 8
  br label %122

122:                                              ; preds = %120, %119
  %123 = load i8*, i8** %9, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 3
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i8, i8* %123, i64 %127
  %129 = call i32 @strtol(i8* %128, i32* null, i32 0)
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %21, align 4
  store i32 %130, i32* %22, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sge i64 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %122
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 5
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load i8*, i8** %9, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 5
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = call i32 @strtol(i8* %148, i32* null, i32 0)
  store i32 %149, i32* %22, align 4
  br label %150

150:                                              ; preds = %142, %136, %122
  %151 = load i8*, i8** %19, align 8
  %152 = load i8**, i8*** %11, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i32, i32* %21, align 4
  %154 = load i32*, i32** %12, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32*, i32** %13, align 8
  store i32 %155, i32* %156, align 4
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %150, %83, %39
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i64 @regcomp(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @regexec(%struct.TYPE_10__*, i8*, i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
