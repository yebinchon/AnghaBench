; ModuleID = '/home/carl/AnghaBench/i3/src/extr_bindings.c_fill_rmlvo_from_root.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_bindings.c_fill_rmlvo_from_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xkb_rule_names = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@conn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"_XKB_RULES_NAMES\00", align 1
@root = common dso_local global i32 0, align 4
@XCB_GET_PROPERTY_TYPE_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"component %d of _XKB_RULES_NAMES is \22%.*s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xkb_rule_names*)* @fill_rmlvo_from_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_rmlvo_from_root(%struct.xkb_rule_names* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xkb_rule_names*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xkb_rule_names* %0, %struct.xkb_rule_names** %3, align 8
  store i64 256, i64* %5, align 8
  %12 = load i32, i32* @conn, align 4
  %13 = load i32, i32* @conn, align 4
  %14 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @xcb_intern_atom(i32 %13, i32 0, i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = call %struct.TYPE_8__* @xcb_intern_atom_reply(i32 %12, i32 %15, i32* null)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %159

20:                                               ; preds = %1
  %21 = load i32, i32* @conn, align 4
  %22 = load i32, i32* @root, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @xcb_get_property_unchecked(i32 %21, i32 0, i32 %22, i32 %25, i32 %26, i32 0, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @conn, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.TYPE_8__* @xcb_get_property_reply(i32 %29, i32 %30, i32* null)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = icmp eq %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = call i32 @free(%struct.TYPE_8__* %35)
  store i32 -1, i32* %2, align 4
  br label %159

37:                                               ; preds = %20
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = call i32 @xcb_get_property_value_length(%struct.TYPE_8__* %38)
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sitofp i64 %49 to double
  %51 = fdiv double %50, 4.000000e+00
  %52 = call i64 @ceil(double %51)
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %5, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = call i32 @free(%struct.TYPE_8__* %55)
  %57 = load i32, i32* @conn, align 4
  %58 = load i32, i32* @root, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @xcb_get_property_unchecked(i32 %57, i32 0, i32 %58, i32 %61, i32 %62, i32 0, i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @conn, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call %struct.TYPE_8__* @xcb_get_property_reply(i32 %65, i32 %66, i32* null)
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %7, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = icmp eq %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %46
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = call i32 @free(%struct.TYPE_8__* %71)
  store i32 -1, i32* %2, align 4
  br label %159

73:                                               ; preds = %46
  br label %74

74:                                               ; preds = %73, %41, %37
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = call i32 @xcb_get_property_value_length(%struct.TYPE_8__* %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = call i32 @free(%struct.TYPE_8__* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = call i32 @free(%struct.TYPE_8__* %81)
  store i32 -1, i32* %2, align 4
  br label %159

83:                                               ; preds = %74
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = call i64 @xcb_get_property_value(%struct.TYPE_8__* %84)
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %8, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = call i32 @xcb_get_property_value_length(%struct.TYPE_8__* %87)
  store i32 %88, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %151, %83
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 5
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp sgt i32 %93, 0
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i1 [ false, %89 ], [ %94, %92 ]
  br i1 %96, label %97, label %154

97:                                               ; preds = %95
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @strnlen(i8* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  switch i32 %101, label %137 [
    i32 0, label %102
    i32 1, label %109
    i32 2, label %116
    i32 3, label %123
    i32 4, label %130
  ]

102:                                              ; preds = %97
  %103 = load %struct.xkb_rule_names*, %struct.xkb_rule_names** %3, align 8
  %104 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %103, i32 0, i32 4
  %105 = bitcast i32* %104 to i8**
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @sasprintf(i8** %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %106, i8* %107)
  br label %137

109:                                              ; preds = %97
  %110 = load %struct.xkb_rule_names*, %struct.xkb_rule_names** %3, align 8
  %111 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %110, i32 0, i32 3
  %112 = bitcast i32* %111 to i8**
  %113 = load i32, i32* %11, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @sasprintf(i8** %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %113, i8* %114)
  br label %137

116:                                              ; preds = %97
  %117 = load %struct.xkb_rule_names*, %struct.xkb_rule_names** %3, align 8
  %118 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %117, i32 0, i32 2
  %119 = bitcast i32* %118 to i8**
  %120 = load i32, i32* %11, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @sasprintf(i8** %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %120, i8* %121)
  br label %137

123:                                              ; preds = %97
  %124 = load %struct.xkb_rule_names*, %struct.xkb_rule_names** %3, align 8
  %125 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %124, i32 0, i32 1
  %126 = bitcast i32* %125 to i8**
  %127 = load i32, i32* %11, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @sasprintf(i8** %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %127, i8* %128)
  br label %137

130:                                              ; preds = %97
  %131 = load %struct.xkb_rule_names*, %struct.xkb_rule_names** %3, align 8
  %132 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %131, i32 0, i32 0
  %133 = bitcast i32* %132 to i8**
  %134 = load i32, i32* %11, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @sasprintf(i8** %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %134, i8* %135)
  br label %137

137:                                              ; preds = %97, %130, %123, %116, %109, %102
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @DLOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %139, i8* %140)
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i8*, i8** %8, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %8, align 8
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %137
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %89

154:                                              ; preds = %95
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = call i32 @free(%struct.TYPE_8__* %155)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %158 = call i32 @free(%struct.TYPE_8__* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %78, %70, %34, %19
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_8__* @xcb_intern_atom_reply(i32, i32, i32*) #1

declare dso_local i32 @xcb_intern_atom(i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xcb_get_property_unchecked(i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_8__* @xcb_get_property_reply(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @xcb_get_property_value_length(%struct.TYPE_8__*) #1

declare dso_local i64 @ceil(double) #1

declare dso_local i64 @xcb_get_property_value(%struct.TYPE_8__*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @sasprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @DLOG(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
