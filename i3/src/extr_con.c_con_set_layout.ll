; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_set_layout.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_set_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i32, %struct.TYPE_15__*, i64 }

@.str = private unnamed_addr constant [40 x i8] c"con_set_layout(%p, %d), con->type = %d\0A\00", align 1
@CT_WORKSPACE = common dso_local global i64 0, align 8
@L_SPLITH = common dso_local global i64 0, align 8
@L_SPLITV = common dso_local global i64 0, align 8
@L_STACKED = common dso_local global i64 0, align 8
@L_TABBED = common dso_local global i64 0, align 8
@L_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting workspace_layout to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Setting layout to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Creating new split container\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Moving cons\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Attaching new split to ws\0A\00", align 1
@croot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_set_layout(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %9, i64 %10, i64 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CT_WORKSPACE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %3, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @L_SPLITH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @L_SPLITV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30, %24
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CT_WORKSPACE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %140

48:                                               ; preds = %42
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = call i64 @con_num_children(%struct.TYPE_15__* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @L_STACKED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @L_TABBED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %52
  %61 = load i64, i64* %4, align 8
  br label %64

62:                                               ; preds = %56
  %63 = load i64, i64* @L_DEFAULT, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 5
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %137

76:                                               ; preds = %48
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @L_STACKED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @L_TABBED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @L_SPLITV, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @L_SPLITH, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %88, %84, %80, %76
  %93 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %94 = call %struct.TYPE_15__* @con_new(i32* null, i32* null)
  store %struct.TYPE_15__* %94, %struct.TYPE_15__** %6, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 4
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %97, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = call %struct.TYPE_15__** @get_focus_order(%struct.TYPE_15__* %106)
  store %struct.TYPE_15__** %107, %struct.TYPE_15__*** %7, align 8
  %108 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %115, %92
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 3
  %112 = call i32 @TAILQ_EMPTY(i32* %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %117)
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %8, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = call i32 @con_detach(%struct.TYPE_15__* %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = call i32 @con_attach(%struct.TYPE_15__* %121, %struct.TYPE_15__* %122, i32 1)
  br label %109

124:                                              ; preds = %109
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %127 = call i32 @set_focus_order(%struct.TYPE_15__* %125, %struct.TYPE_15__** %126)
  %128 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %129 = call i32 @free(%struct.TYPE_15__** %128)
  %130 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = call i32 @con_attach(%struct.TYPE_15__* %131, %struct.TYPE_15__* %132, i32 0)
  %134 = load i32, i32* @croot, align 4
  %135 = call i32 @tree_flatten(i32 %134)
  br label %136

136:                                              ; preds = %124, %88
  br label %137

137:                                              ; preds = %136, %64
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %139 = call i32 @con_force_split_parents_redraw(%struct.TYPE_15__* %138)
  br label %167

140:                                              ; preds = %42
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* @L_DEFAULT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @L_DEFAULT, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %144
  %156 = load i64, i64* @L_SPLITH, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %144
  br label %164

160:                                              ; preds = %140
  %161 = load i64, i64* %4, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %160, %159
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %166 = call i32 @con_force_split_parents_redraw(%struct.TYPE_15__* %165)
  br label %167

167:                                              ; preds = %164, %137
  ret void
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i64 @con_num_children(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @con_new(i32*, i32*) #1

declare dso_local %struct.TYPE_15__** @get_focus_order(%struct.TYPE_15__*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.TYPE_15__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @con_detach(%struct.TYPE_15__*) #1

declare dso_local i32 @con_attach(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @set_focus_order(%struct.TYPE_15__*, %struct.TYPE_15__**) #1

declare dso_local i32 @free(%struct.TYPE_15__**) #1

declare dso_local i32 @tree_flatten(i32) #1

declare dso_local i32 @con_force_split_parents_redraw(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
