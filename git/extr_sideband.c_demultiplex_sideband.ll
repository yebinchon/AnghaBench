; ModuleID = '/home/carl/AnghaBench/git/extr_sideband.c_demultiplex_sideband.c'
source_filename = "/home/carl/AnghaBench/git/extr_sideband.c_demultiplex_sideband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }

@demultiplex_sideband.suffix = internal global i8* null, align 8
@ANSI_SUFFIX = common dso_local global i8* null, align 8
@DUMB_SUFFIX = common dso_local global i8* null, align 8
@SIDEBAND_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s%s: protocol error: no band designator\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIDEBAND_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"remote error: %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@DISPLAY_PREFIX = common dso_local global i8* null, align 8
@SIDEBAND_REMOTE_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@SIDEBAND_PRIMARY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"%s%s: protocol error: bad band #%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @demultiplex_sideband(i8* %0, i8* %1, i32 %2, i32 %3, %struct.strbuf* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.strbuf* %4, %struct.strbuf** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** @demultiplex_sideband.suffix, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %6
  %21 = call i64 @isatty(i32 2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 (...) @is_terminal_dumb()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** @ANSI_SUFFIX, align 8
  store i8* %27, i8** @demultiplex_sideband.suffix, align 8
  br label %30

28:                                               ; preds = %23, %20
  %29 = load i8*, i8** @DUMB_SUFFIX, align 8
  store i8* %29, i8** @demultiplex_sideband.suffix, align 8
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %6
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @SIDEBAND_FLUSH, align 4
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  br label %177

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %42 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load i32, i32* @SIDEBAND_PROTOCOL_ERROR, align 4
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  br label %177

52:                                               ; preds = %37
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 %56, 255
  store i32 %57, i32* %16, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %16, align 4
  switch i32 %64, label %163 [
    i32 3, label %65
    i32 2, label %89
    i32 1, label %160
  ]

65:                                               ; preds = %52
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %74 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %80 = load i8*, i8** @DISPLAY_PREFIX, align 8
  %81 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @maybe_colorize_sideband(%struct.strbuf* %82, i8* %84, i32 %85)
  %87 = load i32, i32* @SIDEBAND_REMOTE_ERROR, align 4
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  br label %176

89:                                               ; preds = %52
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %14, align 8
  br label %92

92:                                               ; preds = %122, %89
  %93 = load i8*, i8** %14, align 8
  %94 = call i8* @strpbrk(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %94, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %138

96:                                               ; preds = %92
  %97 = load i8*, i8** %15, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %17, align 4
  %103 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %104 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %96
  %108 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %109 = load i8*, i8** @DISPLAY_PREFIX, align 8
  %110 = call i32 @strbuf_addstr(%struct.strbuf* %108, i8* %109)
  br label %111

111:                                              ; preds = %107, %96
  %112 = load i32, i32* %17, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @maybe_colorize_sideband(%struct.strbuf* %115, i8* %116, i32 %117)
  %119 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %120 = load i8*, i8** @demultiplex_sideband.suffix, align 8
  %121 = call i32 @strbuf_addstr(%struct.strbuf* %119, i8* %120)
  br label %122

122:                                              ; preds = %114, %111
  %123 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = load i8, i8* %124, align 1
  %126 = call i32 @strbuf_addch(%struct.strbuf* %123, i8 signext %125)
  %127 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %128 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @xwrite(i32 2, i8* %129, i64 %132)
  %134 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %135 = call i32 @strbuf_reset(%struct.strbuf* %134)
  %136 = load i8*, i8** %15, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %14, align 8
  br label %92

138:                                              ; preds = %92
  %139 = load i8*, i8** %14, align 8
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %144 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %145 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %151

149:                                              ; preds = %142
  %150 = load i8*, i8** @DISPLAY_PREFIX, align 8
  br label %151

151:                                              ; preds = %149, %148
  %152 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %148 ], [ %150, %149 ]
  %153 = call i32 @strbuf_addstr(%struct.strbuf* %143, i8* %152)
  %154 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = call i32 @maybe_colorize_sideband(%struct.strbuf* %154, i8* %155, i32 %157)
  br label %159

159:                                              ; preds = %151, %138
  store i32 0, i32* %7, align 4
  br label %208

160:                                              ; preds = %52
  %161 = load i32, i32* @SIDEBAND_PRIMARY, align 4
  %162 = load i32*, i32** %13, align 8
  store i32 %161, i32* %162, align 4
  br label %176

163:                                              ; preds = %52
  %164 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %165 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %166 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* %16, align 4
  %173 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %170, i8* %171, i32 %172)
  %174 = load i32, i32* @SIDEBAND_PROTOCOL_ERROR, align 4
  %175 = load i32*, i32** %13, align 8
  store i32 %174, i32* %175, align 4
  br label %176

176:                                              ; preds = %163, %160, %72
  br label %177

177:                                              ; preds = %176, %40, %34
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SIDEBAND_PROTOCOL_ERROR, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %187 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %185, %180, %177
  %191 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %192 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %197 = call i32 @strbuf_addch(%struct.strbuf* %196, i8 signext 10)
  %198 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %199 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %202 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @xwrite(i32 2, i8* %200, i64 %203)
  br label %205

205:                                              ; preds = %195, %190
  %206 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %207 = call i32 @strbuf_release(%struct.strbuf* %206)
  store i32 1, i32* %7, align 4
  br label %208

208:                                              ; preds = %205, %159
  %209 = load i32, i32* %7, align 4
  ret i32 %209
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @is_terminal_dumb(...) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @maybe_colorize_sideband(%struct.strbuf*, i8*, i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @xwrite(i32, i8*, i64) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
