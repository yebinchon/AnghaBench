; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_root_atom_contents.c_root_atom_contents.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_root_atom_contents.c_root_atom_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@XCB_GET_PROPERTY_TYPE_ANY = common dso_local global i32 0, align 4
@XCB_ATOM_CARDINAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @root_atom_contents(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %10, align 8
  store i64 256, i64* %11, align 8
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = call i32* @xcb_connect(i32* null, i32* %7)
  store i32* %21, i32** %12, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %12, align 8
  %25 = call i64 @xcb_connection_has_error(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  store i8* null, i8** %4, align 8
  br label %135

28:                                               ; preds = %23, %3
  %29 = load i32*, i32** %12, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @xcb_intern_atom(i32* %29, i32 0, i32 %31, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.TYPE_10__* @xcb_aux_get_screen(i32* %34, i32 %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %13, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.TYPE_11__* @xcb_intern_atom_reply(i32* %40, i32 %41, i32* null)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %9, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = icmp eq %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %127

46:                                               ; preds = %28
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @xcb_get_property_unchecked(i32* %47, i32 0, i32 %48, i32 %51, i32 %52, i32 0, i64 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call %struct.TYPE_11__* @xcb_get_property_reply(i32* %55, i32 %56, i32* null)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %16, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %59 = icmp eq %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %124

61:                                               ; preds = %46
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %63 = call i32 @xcb_get_property_value_length(%struct.TYPE_11__* %62)
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = fdiv double %74, 4.000000e+00
  %76 = call i64 @ceil(double %75)
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %11, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %80 = call i32 @free(%struct.TYPE_11__* %79)
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @xcb_get_property_unchecked(i32* %81, i32 0, i32 %82, i32 %85, i32 %86, i32 0, i64 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call %struct.TYPE_11__* @xcb_get_property_reply(i32* %89, i32 %90, i32* null)
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %16, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %93 = icmp eq %struct.TYPE_11__* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %70
  br label %124

95:                                               ; preds = %70
  br label %96

96:                                               ; preds = %95, %65, %61
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %98 = call i32 @xcb_get_property_value_length(%struct.TYPE_11__* %97)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %121

101:                                              ; preds = %96
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @XCB_ATOM_CARDINAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %109 = call i64 @xcb_get_property_value(%struct.TYPE_11__* %108)
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8**, i8*, i32, ...) @sasprintf(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %120

113:                                              ; preds = %101
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %115 = call i32 @xcb_get_property_value_length(%struct.TYPE_11__* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %117 = call i64 @xcb_get_property_value(%struct.TYPE_11__* %116)
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 (i8**, i8*, i32, ...) @sasprintf(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %115, i8* %118)
  br label %120

120:                                              ; preds = %113, %107
  br label %121

121:                                              ; preds = %120, %100
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %123 = call i32 @free(%struct.TYPE_11__* %122)
  br label %124

124:                                              ; preds = %121, %94, %60
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = call i32 @free(%struct.TYPE_11__* %125)
  br label %127

127:                                              ; preds = %124, %45
  %128 = load i32*, i32** %6, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @xcb_disconnect(i32* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i8*, i8** %10, align 8
  store i8* %134, i8** %4, align 8
  br label %135

135:                                              ; preds = %133, %27
  %136 = load i8*, i8** %4, align 8
  ret i8* %136
}

declare dso_local i32* @xcb_connect(i32*, i32*) #1

declare dso_local i64 @xcb_connection_has_error(i32*) #1

declare dso_local i32 @xcb_intern_atom(i32*, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_10__* @xcb_aux_get_screen(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @xcb_intern_atom_reply(i32*, i32, i32*) #1

declare dso_local i32 @xcb_get_property_unchecked(i32*, i32, i32, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_11__* @xcb_get_property_reply(i32*, i32, i32*) #1

declare dso_local i32 @xcb_get_property_value_length(%struct.TYPE_11__*) #1

declare dso_local i64 @ceil(double) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @sasprintf(i8**, i8*, i32, ...) #1

declare dso_local i64 @xcb_get_property_value(%struct.TYPE_11__*) #1

declare dso_local i32 @xcb_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
