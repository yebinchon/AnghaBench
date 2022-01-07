; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c_getSelectionString.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c_getSelectionString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i8*, i8*, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@XA_STRING = common dso_local global i64 0, align 8
@CurrentTime = common dso_local global i32 0, align 4
@SelectionNotify = common dso_local global i32 0, align 4
@None = common dso_local global i64 0, align 8
@isSelPropNewValueNotify = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@AnyPropertyType = common dso_local global i32 0, align 4
@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"X11: Failed to convert selection to string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @getSelectionString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getSelectionString(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca [2 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8** null, i8*** %4, align 8
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 1
  %20 = load i64, i64* @XA_STRING, align 8
  store i64 %20, i64* %19, align 8
  store i64 2, i64* %6, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1), align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2), i8*** %4, align 8
  br label %26

25:                                               ; preds = %1
  store i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3), i8*** %4, align 8
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @XGetSelectionOwner(i32 %27, i64 %28)
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %2, align 8
  br label %195

35:                                               ; preds = %26
  %36 = load i8**, i8*** %4, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8**, i8*** %4, align 8
  store i8* null, i8** %39, align 8
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %182, %35
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %185

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 7), align 4
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %51 = load i32, i32* @CurrentTime, align 4
  %52 = call i32 @XConvertSelection(i32 %44, i64 %45, i64 %48, i32 %49, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %60, %43
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %56 = load i32, i32* @SelectionNotify, align 4
  %57 = call i32 @XCheckTypedWindowEvent(i32 %54, i64 %55, i32 %56, %struct.TYPE_9__* %13)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @waitForEvent(i32* null)
  br label %53

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @None, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %182

69:                                               ; preds = %62
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %71 = load i32, i32* @isSelPropNewValueNotify, align 4
  %72 = ptrtoint %struct.TYPE_9__* %13 to i32
  %73 = call i32 @XCheckIfEvent(i32 %70, %struct.TYPE_9__* %14, i32 %71, i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @LONG_MAX, align 4
  %82 = load i32, i32* @True, align 4
  %83 = load i32, i32* @AnyPropertyType, align 4
  %84 = call i32 @XGetWindowProperty(i32 %74, i32 %77, i64 %80, i32 0, i32 %81, i32 %82, i32 %83, i64* %9, i32* %10, i64* %11, i64* %12, i8** %8)
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 5), align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %152

88:                                               ; preds = %69
  store i64 1, i64* %15, align 8
  store i8* null, i8** %16, align 8
  br label %89

89:                                               ; preds = %150, %88
  br label %90

90:                                               ; preds = %97, %89
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %92 = load i32, i32* @isSelPropNewValueNotify, align 4
  %93 = ptrtoint %struct.TYPE_9__* %13 to i32
  %94 = call i32 @XCheckIfEvent(i32 %91, %struct.TYPE_9__* %14, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 @waitForEvent(i32* null)
  br label %90

99:                                               ; preds = %90
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @XFree(i8* %100)
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @LONG_MAX, align 4
  %110 = load i32, i32* @True, align 4
  %111 = load i32, i32* @AnyPropertyType, align 4
  %112 = call i32 @XGetWindowProperty(i32 %102, i32 %105, i64 %108, i32 0, i32 %109, i32 %110, i32 %111, i64* %9, i32* %10, i64* %11, i64* %12, i8** %8)
  %113 = load i64, i64* %11, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %99
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %15, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %15, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = load i64, i64* %15, align 8
  %121 = call i8* @realloc(i8* %119, i64 %120)
  store i8* %121, i8** %16, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %11, align 8
  %125 = sub i64 %123, %124
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %16, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @strcat(i8* %128, i8* %129)
  br label %131

131:                                              ; preds = %115, %99
  %132 = load i64, i64* %11, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @XA_STRING, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i8*, i8** %16, align 8
  %142 = call i8* @convertLatin1toUTF8(i8* %141)
  %143 = load i8**, i8*** %4, align 8
  store i8* %142, i8** %143, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = call i32 @free(i8* %144)
  br label %149

146:                                              ; preds = %134
  %147 = load i8*, i8** %16, align 8
  %148 = load i8**, i8*** %4, align 8
  store i8* %147, i8** %148, align 8
  br label %149

149:                                              ; preds = %146, %140
  br label %151

150:                                              ; preds = %131
  br label %89

151:                                              ; preds = %149
  br label %174

152:                                              ; preds = %69
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %153, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %152
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @XA_STRING, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i8*, i8** %8, align 8
  %166 = call i8* @convertLatin1toUTF8(i8* %165)
  %167 = load i8**, i8*** %4, align 8
  store i8* %166, i8** %167, align 8
  br label %172

168:                                              ; preds = %158
  %169 = load i8*, i8** %8, align 8
  %170 = call i8* @_glfw_strdup(i8* %169)
  %171 = load i8**, i8*** %4, align 8
  store i8* %170, i8** %171, align 8
  br label %172

172:                                              ; preds = %168, %164
  br label %173

173:                                              ; preds = %172, %152
  br label %174

174:                                              ; preds = %173, %151
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @XFree(i8* %175)
  %177 = load i8**, i8*** %4, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %185

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %181, %68
  %183 = load i64, i64* %7, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %7, align 8
  br label %40

185:                                              ; preds = %180, %40
  %186 = load i8**, i8*** %4, align 8
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %191 = call i32 @_glfwInputError(i32 %190, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %185
  %193 = load i8**, i8*** %4, align 8
  %194 = load i8*, i8** %193, align 8
  store i8* %194, i8** %2, align 8
  br label %195

195:                                              ; preds = %192, %32
  %196 = load i8*, i8** %2, align 8
  ret i8* %196
}

declare dso_local i64 @XGetSelectionOwner(i32, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @XConvertSelection(i32, i64, i64, i32, i64, i32) #1

declare dso_local i32 @XCheckTypedWindowEvent(i32, i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @waitForEvent(i32*) #1

declare dso_local i32 @XCheckIfEvent(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @XGetWindowProperty(i32, i32, i64, i32, i32, i32, i32, i64*, i32*, i64*, i64*, i8**) #1

declare dso_local i32 @XFree(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @convertLatin1toUTF8(i8*) #1

declare dso_local i8* @_glfw_strdup(i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
