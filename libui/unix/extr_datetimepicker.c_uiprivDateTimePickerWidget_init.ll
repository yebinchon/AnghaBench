; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_uiprivDateTimePickerWidget_init.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_uiprivDateTimePickerWidget_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i8*, i32*, i32*, i8*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i8* }

@GTK_WINDOW_POPUP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GDK_WINDOW_TYPE_HINT_COMBO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@GTK_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"day-selected\00", align 1
@dateChanged = common dso_local global i32 0, align 4
@GTK_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@GTK_ALIGN_CENTER = common dso_local global i32 0, align 4
@hoursSpinboxInput = common dso_local global i32* null, align 8
@hoursSpinboxOutput = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@zeroPadSpinbox = common dso_local global i32 0, align 4
@ampmSpinboxInput = common dso_local global i32* null, align 8
@ampmSpinboxOutput = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"grab-broken-event\00", align 1
@grabBroken = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@buttonReleased = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@onToggled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @uiprivDateTimePickerWidget_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uiprivDateTimePickerWidget_init(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %3 = load i32, i32* @GTK_WINDOW_POPUP, align 4
  %4 = call %struct.TYPE_20__* @gtk_window_new(i32 %3)
  %5 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 5
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %6, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %10 = call i32 @GTK_WINDOW(%struct.TYPE_20__* %9)
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @gtk_window_set_resizable(i32 %10, i32 %11)
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %16 = call i32 @GTK_WINDOW(%struct.TYPE_20__* %15)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %18 = call i32 @GTK_WIDGET(%struct.TYPE_20__* %17)
  %19 = call i32 @gtk_window_set_attached_to(i32 %16, i32 %18)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = call i32 @GTK_WINDOW(%struct.TYPE_20__* %22)
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @gtk_window_set_decorated(i32 %23, i32 %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = call i32 @GTK_WINDOW(%struct.TYPE_20__* %28)
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @gtk_window_set_deletable(i32 %29, i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = call i32 @GTK_WINDOW(%struct.TYPE_20__* %34)
  %36 = load i32, i32* @GDK_WINDOW_TYPE_HINT_COMBO, align 4
  %37 = call i32 @gtk_window_set_type_hint(i32 %35, i32 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = call i32 @GTK_WINDOW(%struct.TYPE_20__* %40)
  %42 = load i8*, i8** @TRUE, align 8
  %43 = call i32 @gtk_window_set_skip_taskbar_hint(i32 %41, i8* %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = call i32 @GTK_WINDOW(%struct.TYPE_20__* %46)
  %48 = load i8*, i8** @TRUE, align 8
  %49 = call i32 @gtk_window_set_skip_pager_hint(i32 %47, i8* %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = call i32 @GTK_WINDOW(%struct.TYPE_20__* %52)
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @gtk_window_set_has_resize_grip(i32 %53, i32 %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %58)
  %60 = call i32 @gtk_container_set_border_width(i32 %59, i32 12)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = call i32 @gtk_widget_get_style_context(%struct.TYPE_20__* %63)
  %65 = call i32 @gtk_style_context_add_class(i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @GTK_ORIENTATION_VERTICAL, align 4
  %67 = call i8* @gtk_box_new(i32 %66, i32 6)
  %68 = bitcast i8* %67 to %struct.TYPE_20__*
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 6
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = call i32 @gtk_container_add(i32 %74, %struct.TYPE_20__* %77)
  %79 = call %struct.TYPE_20__* (...) @gtk_calendar_new()
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 16
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %81, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 16
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = load i32, i32* @dateChanged, align 4
  %86 = call i32 @G_CALLBACK(i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %88 = call i8* @g_signal_connect(%struct.TYPE_20__* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %86, %struct.TYPE_20__* %87)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 17
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %93)
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 16
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = call i32 @gtk_container_add(i32 %94, %struct.TYPE_20__* %97)
  %99 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %100 = call i8* @gtk_box_new(i32 %99, i32 6)
  %101 = bitcast i8* %100 to %struct.TYPE_20__*
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 8
  store %struct.TYPE_20__* %101, %struct.TYPE_20__** %103, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %108 = call i32 @gtk_widget_set_valign(%struct.TYPE_20__* %106, i32 %107)
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = call i32 @gtk_container_add(i32 %112, %struct.TYPE_20__* %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %118 = load i32*, i32** @hoursSpinboxInput, align 8
  %119 = load i32, i32* @hoursSpinboxOutput, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 15
  %122 = call i8* @newSpinbox(%struct.TYPE_20__* %117, i32 0, i32 11, i32* %118, i32 %119, i32* %121)
  %123 = bitcast i8* %122 to %struct.TYPE_20__*
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 14
  store %struct.TYPE_20__* %123, %struct.TYPE_20__** %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 14
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = call i32 @gtk_container_add(i32 %129, %struct.TYPE_20__* %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %136)
  %138 = call %struct.TYPE_20__* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %139 = call i32 @gtk_container_add(i32 %137, %struct.TYPE_20__* %138)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %141 = load i32, i32* @zeroPadSpinbox, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 13
  %144 = call i8* @newSpinbox(%struct.TYPE_20__* %140, i32 0, i32 59, i32* null, i32 %141, i32* %143)
  %145 = bitcast i8* %144 to %struct.TYPE_20__*
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 12
  store %struct.TYPE_20__* %145, %struct.TYPE_20__** %147, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %150)
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 12
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = call i32 @gtk_container_add(i32 %151, %struct.TYPE_20__* %154)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %158)
  %160 = call %struct.TYPE_20__* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %161 = call i32 @gtk_container_add(i32 %159, %struct.TYPE_20__* %160)
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %163 = load i32, i32* @zeroPadSpinbox, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 11
  %166 = call i8* @newSpinbox(%struct.TYPE_20__* %162, i32 0, i32 59, i32* null, i32 %163, i32* %165)
  %167 = bitcast i8* %166 to %struct.TYPE_20__*
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 10
  store %struct.TYPE_20__* %167, %struct.TYPE_20__** %169, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  %173 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %172)
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 10
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = call i32 @gtk_container_add(i32 %173, %struct.TYPE_20__* %176)
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %179 = load i32*, i32** @ampmSpinboxInput, align 8
  %180 = load i32, i32* @ampmSpinboxOutput, align 4
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 9
  %183 = call i8* @newSpinbox(%struct.TYPE_20__* %178, i32 0, i32 1, i32* %179, i32 %180, i32* %182)
  %184 = bitcast i8* %183 to %struct.TYPE_20__*
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 7
  store %struct.TYPE_20__* %184, %struct.TYPE_20__** %186, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = call i32 @GTK_SPIN_BUTTON(%struct.TYPE_20__* %189)
  %191 = load i32, i32* @FALSE, align 4
  %192 = call i32 @gtk_spin_button_set_numeric(i32 %190, i32 %191)
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %197 = call i32 @gtk_widget_set_valign(%struct.TYPE_20__* %195, i32 %196)
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = call i32 @GTK_CONTAINER(%struct.TYPE_20__* %200)
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 7
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  %205 = call i32 @gtk_container_add(i32 %201, %struct.TYPE_20__* %204)
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 6
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %207, align 8
  %209 = call i32 @gtk_widget_show_all(%struct.TYPE_20__* %208)
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = load i32, i32* @grabBroken, align 4
  %214 = call i32 @G_CALLBACK(i32 %213)
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %216 = call i8* @g_signal_connect(%struct.TYPE_20__* %212, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %214, %struct.TYPE_20__* %215)
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 5
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = load i32, i32* @buttonReleased, align 4
  %221 = call i32 @G_CALLBACK(i32 %220)
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %223 = call i8* @g_signal_connect(%struct.TYPE_20__* %219, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %221, %struct.TYPE_20__* %222)
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %225 = load i32, i32* @onToggled, align 4
  %226 = call i32 @G_CALLBACK(i32 %225)
  %227 = call i8* @g_signal_connect(%struct.TYPE_20__* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %226, %struct.TYPE_20__* null)
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 4
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 3
  store i32* null, i32** %231, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 2
  store i32* null, i32** %233, align 8
  %234 = load i8*, i8** @TRUE, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = load i8*, i8** @TRUE, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %241 = call i32 (...) @g_date_time_new_now_local()
  %242 = call i32 @uiprivDateTimePickerWidget_setTime(%struct.TYPE_20__* %240, i32 %241)
  ret void
}

declare dso_local %struct.TYPE_20__* @gtk_window_new(i32) #1

declare dso_local i32 @gtk_window_set_resizable(i32, i32) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_20__*) #1

declare dso_local i32 @gtk_window_set_attached_to(i32, i32) #1

declare dso_local i32 @GTK_WIDGET(%struct.TYPE_20__*) #1

declare dso_local i32 @gtk_window_set_decorated(i32, i32) #1

declare dso_local i32 @gtk_window_set_deletable(i32, i32) #1

declare dso_local i32 @gtk_window_set_type_hint(i32, i32) #1

declare dso_local i32 @gtk_window_set_skip_taskbar_hint(i32, i8*) #1

declare dso_local i32 @gtk_window_set_skip_pager_hint(i32, i8*) #1

declare dso_local i32 @gtk_window_set_has_resize_grip(i32, i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_20__*) #1

declare dso_local i32 @gtk_style_context_add_class(i32, i8*) #1

declare dso_local i32 @gtk_widget_get_style_context(%struct.TYPE_20__*) #1

declare dso_local i8* @gtk_box_new(i32, i32) #1

declare dso_local i32 @gtk_container_add(i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @gtk_calendar_new(...) #1

declare dso_local i8* @g_signal_connect(%struct.TYPE_20__*, i8*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @gtk_widget_set_valign(%struct.TYPE_20__*, i32) #1

declare dso_local i8* @newSpinbox(%struct.TYPE_20__*, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @gtk_label_new(i8*) #1

declare dso_local i32 @gtk_spin_button_set_numeric(i32, i32) #1

declare dso_local i32 @GTK_SPIN_BUTTON(%struct.TYPE_20__*) #1

declare dso_local i32 @gtk_widget_show_all(%struct.TYPE_20__*) #1

declare dso_local i32 @uiprivDateTimePickerWidget_setTime(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @g_date_time_new_now_local(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
