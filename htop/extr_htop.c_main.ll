; ModuleID = '/home/carl/AnghaBench/htop/extr_htop.c_main.c'
source_filename = "/home/carl/AnghaBench/htop/extr_htop.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i64, i64, i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i32, i32, i64, i32, i64, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_26__*, i32*, %struct.TYPE_25__*, i32*, %struct.TYPE_24__* }

@.str = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@COLORSCHEME_MONOCHROME = common dso_local global i32 0, align 4
@HORIZONTAL = common dso_local global i32 0, align 4
@CRT_colors = common dso_local global i32* null, align 8
@RESET_COLOR = common dso_local global i64 0, align 8
@LINES = common dso_local global i64 0, align 8
@COLS = common dso_local global i32 0, align 4
@PROCDIR = common dso_local global i8* null, align 8
@R_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_27__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @LC_CTYPE, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @setlocale(i32 %19, i8* %20)
  br label %33

22:                                               ; preds = %2
  %23 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @LC_CTYPE, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @setlocale(i32 %26, i8* %27)
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @LC_CTYPE, align 4
  %31 = call i32 @setlocale(i32 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  call void @parseArguments(%struct.TYPE_27__* sret %7, i32 %34, i8** %35)
  %36 = call i32 (...) @Process_setupColumnWidths()
  %37 = call i32* (...) @UsersTable_new()
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_25__* @ProcessList_new(i32* %38, i64 %40, i32 %42)
  store %struct.TYPE_25__* %43, %struct.TYPE_25__** %9, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_24__* @Settings_new(i32 %46)
  store %struct.TYPE_24__* %47, %struct.TYPE_24__** %10, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %50, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %53 = call %struct.TYPE_26__* @Header_new(%struct.TYPE_25__* %51, %struct.TYPE_24__* %52, i32 2)
  store %struct.TYPE_26__* %53, %struct.TYPE_26__** %11, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %55 = call i32 @Header_populateFromSettings(%struct.TYPE_26__* %54)
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %64

59:                                               ; preds = %33
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %59, %33
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @COLORSCHEME_MONOCHROME, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @CRT_init(i32 %82, i32 %85)
  %87 = call i32* (...) @MainPanel_new()
  store i32* %87, i32** %12, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @ProcessList_setPanel(%struct.TYPE_25__* %88, i32* %89)
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @MainPanel_updateTreeFunctions(i32* %91, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %79
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 3
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %99, %79
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @Panel_getHeader(i32* %110)
  %112 = call i32 @ProcessList_printHeader(%struct.TYPE_25__* %109, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %114, %struct.TYPE_26__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %116 = load i32*, i32** %12, align 8
  store i32* %116, i32** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %118, %struct.TYPE_25__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 3
  %120 = load i32*, i32** %8, align 8
  store i32* %120, i32** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %122, %struct.TYPE_24__** %121, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @MainPanel_setState(i32* %123, %struct.TYPE_23__* %13)
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HORIZONTAL, align 4
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %131 = call i32* @ScreenManager_new(i32 0, i32 %127, i32 0, i32 -1, i32 %128, %struct.TYPE_26__* %129, %struct.TYPE_24__* %130, i32 1)
  store i32* %131, i32** %14, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @ScreenManager_add(i32* %132, i32* %133, i32 -1)
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %136 = call i32 @ProcessList_scan(%struct.TYPE_25__* %135)
  %137 = call i32 @millisleep(i32 75)
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %139 = call i32 @ProcessList_scan(%struct.TYPE_25__* %138)
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 @ScreenManager_run(i32* %140, i32* null, i32* null)
  %142 = load i32*, i32** @CRT_colors, align 8
  %143 = load i64, i64* @RESET_COLOR, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @attron(i32 %145)
  %147 = load i64, i64* @LINES, align 8
  %148 = sub nsw i64 %147, 1
  %149 = load i32, i32* @COLS, align 4
  %150 = call i32 @mvhline(i64 %148, i32 0, i8 signext 32, i32 %149)
  %151 = load i32*, i32** @CRT_colors, align 8
  %152 = load i64, i64* @RESET_COLOR, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @attroff(i32 %154)
  %156 = call i32 (...) @refresh()
  %157 = call i32 (...) @CRT_done()
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %108
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %164 = call i32 @Settings_write(%struct.TYPE_24__* %163)
  br label %165

165:                                              ; preds = %162, %108
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %167 = call i32 @Header_delete(%struct.TYPE_26__* %166)
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %169 = call i32 @ProcessList_delete(%struct.TYPE_25__* %168)
  %170 = load i32*, i32** %14, align 8
  %171 = call i32 @ScreenManager_delete(i32* %170)
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 @UsersTable_delete(i32* %172)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %175 = call i32 @Settings_delete(%struct.TYPE_24__* %174)
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %165
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @Hashtable_delete(i64 %181)
  br label %183

183:                                              ; preds = %179, %165
  ret i32 0
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local void @parseArguments(%struct.TYPE_27__* sret, i32, i8**) #1

declare dso_local i32 @Process_setupColumnWidths(...) #1

declare dso_local i32* @UsersTable_new(...) #1

declare dso_local %struct.TYPE_25__* @ProcessList_new(i32*, i64, i32) #1

declare dso_local %struct.TYPE_24__* @Settings_new(i32) #1

declare dso_local %struct.TYPE_26__* @Header_new(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @Header_populateFromSettings(%struct.TYPE_26__*) #1

declare dso_local i32 @CRT_init(i32, i32) #1

declare dso_local i32* @MainPanel_new(...) #1

declare dso_local i32 @ProcessList_setPanel(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @MainPanel_updateTreeFunctions(i32*, i32) #1

declare dso_local i32 @ProcessList_printHeader(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @Panel_getHeader(i32*) #1

declare dso_local i32 @MainPanel_setState(i32*, %struct.TYPE_23__*) #1

declare dso_local i32* @ScreenManager_new(i32, i32, i32, i32, i32, %struct.TYPE_26__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ScreenManager_add(i32*, i32*, i32) #1

declare dso_local i32 @ProcessList_scan(%struct.TYPE_25__*) #1

declare dso_local i32 @millisleep(i32) #1

declare dso_local i32 @ScreenManager_run(i32*, i32*, i32*) #1

declare dso_local i32 @attron(i32) #1

declare dso_local i32 @mvhline(i64, i32, i8 signext, i32) #1

declare dso_local i32 @attroff(i32) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @CRT_done(...) #1

declare dso_local i32 @Settings_write(%struct.TYPE_24__*) #1

declare dso_local i32 @Header_delete(%struct.TYPE_26__*) #1

declare dso_local i32 @ProcessList_delete(%struct.TYPE_25__*) #1

declare dso_local i32 @ScreenManager_delete(i32*) #1

declare dso_local i32 @UsersTable_delete(i32*) #1

declare dso_local i32 @Settings_delete(%struct.TYPE_24__*) #1

declare dso_local i32 @Hashtable_delete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
