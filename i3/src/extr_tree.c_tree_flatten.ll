; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c_tree_flatten.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c_tree_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_15__*, i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"Checking if I can flatten con = %p / %s\0A\00", align 1
@CT_CON = common dso_local global i64 0, align 8
@L_OUTPUT = common dso_local global i64 0, align 8
@nodes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"child = %p, con = %p, parent = %p\0A\00", align 1
@L_SPLITH = common dso_local global i64 0, align 8
@L_SPLITV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"Alright, I have to flatten this situation now. Stay calm.\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"detaching...\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"detaching current=%p / %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"re-attaching\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"attaching to focus list\0A\00", align 1
@focused = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"re-attached all\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"restoring focus to focus_next=%p\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"restored focus.\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"closing redundant cons\0A\00", align 1
@DONT_KILL_WINDOW = common dso_local global i32 0, align 4
@floating_windows = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_flatten(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %12, i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CT_CON, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @L_OUTPUT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %22, %1
  br label %166

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %36)
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %4, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = icmp eq %struct.TYPE_15__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = load i32, i32* @nodes, align 4
  %43 = call %struct.TYPE_15__* @TAILQ_NEXT(%struct.TYPE_15__* %41, i32 %42)
  %44 = icmp ne %struct.TYPE_15__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %34
  br label %166

46:                                               ; preds = %40
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %47, %struct.TYPE_15__* %48, %struct.TYPE_15__* %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = call i32 @con_is_split(%struct.TYPE_15__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %46
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = call i32 @con_is_split(%struct.TYPE_15__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @L_SPLITH, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @L_SPLITV, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %94, label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @L_SPLITH, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @L_SPLITV, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = call i64 @con_orientation(%struct.TYPE_15__* %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = call i64 @con_orientation(%struct.TYPE_15__* %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = call i64 @con_orientation(%struct.TYPE_15__* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = call i64 @con_orientation(%struct.TYPE_15__* %91)
  %93 = icmp ne i64 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %82, %76, %64, %54, %46
  br label %166

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %98)
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %6, align 8
  %100 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %107, %95
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = call i32 @TAILQ_EMPTY(i32* %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %137

107:                                              ; preds = %101
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  %110 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %109)
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %3, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %111, i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = call i32 @con_detach(%struct.TYPE_15__* %116)
  %118 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 6
  store %struct.TYPE_15__* %119, %struct.TYPE_15__** %121, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %124 = load i32, i32* @nodes, align 4
  %125 = call i32 @TAILQ_INSERT_BEFORE(%struct.TYPE_15__* %122, %struct.TYPE_15__* %123, i32 %124)
  %126 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %130 = load i32, i32* @focused, align 4
  %131 = call i32 @TAILQ_INSERT_TAIL(i32* %128, %struct.TYPE_15__* %129, i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  br label %101

137:                                              ; preds = %101
  %138 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = icmp ne %struct.TYPE_15__* %139, null
  br i1 %140, label %141, label %161

141:                                              ; preds = %137
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  %144 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %146 = icmp eq %struct.TYPE_15__* %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %141
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_15__* %148)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = load i32, i32* @focused, align 4
  %154 = call i32 @TAILQ_REMOVE(i32* %151, %struct.TYPE_15__* %152, i32 %153)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = load i32, i32* @focused, align 4
  %159 = call i32 @TAILQ_INSERT_HEAD(i32* %156, %struct.TYPE_15__* %157, i32 %158)
  %160 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %161

161:                                              ; preds = %147, %141, %137
  %162 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = load i32, i32* @DONT_KILL_WINDOW, align 4
  %165 = call i32 @tree_close_internal(%struct.TYPE_15__* %163, i32 %164, i32 1)
  br label %192

166:                                              ; preds = %94, %45, %33
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 3
  %169 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %168)
  store %struct.TYPE_15__* %169, %struct.TYPE_15__** %3, align 8
  br label %170

170:                                              ; preds = %173, %166
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %172 = icmp ne %struct.TYPE_15__* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = load i32, i32* @nodes, align 4
  %176 = call %struct.TYPE_15__* @TAILQ_NEXT(%struct.TYPE_15__* %174, i32 %175)
  store %struct.TYPE_15__* %176, %struct.TYPE_15__** %7, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  call void @tree_flatten(%struct.TYPE_15__* %177)
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %178, %struct.TYPE_15__** %3, align 8
  br label %170

179:                                              ; preds = %170
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %181)
  store %struct.TYPE_15__* %182, %struct.TYPE_15__** %3, align 8
  br label %183

183:                                              ; preds = %186, %179
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %185 = icmp ne %struct.TYPE_15__* %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = load i32, i32* @floating_windows, align 4
  %189 = call %struct.TYPE_15__* @TAILQ_NEXT(%struct.TYPE_15__* %187, i32 %188)
  store %struct.TYPE_15__* %189, %struct.TYPE_15__** %8, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  call void @tree_flatten(%struct.TYPE_15__* %190)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %191, %struct.TYPE_15__** %3, align 8
  br label %183

192:                                              ; preds = %161, %183
  ret void
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_15__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_15__* @TAILQ_NEXT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @con_is_split(%struct.TYPE_15__*) #1

declare dso_local i64 @con_orientation(%struct.TYPE_15__*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @con_detach(%struct.TYPE_15__*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @tree_close_internal(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
