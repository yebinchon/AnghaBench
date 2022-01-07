; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_confdata.c_conf_write_defconfig.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_confdata.c_conf_write_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.menu* }
%struct.menu = type { %struct.menu*, %struct.menu*, %struct.menu*, %struct.symbol* }
%struct.symbol = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@rootmenu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYMBOL_WRITE = common dso_local global i32 0, align 4
@S_BOOLEAN = common dso_local global i64 0, align 8
@yes = common dso_local global i64 0, align 8
@kconfig_printer_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conf_write_defconfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.menu*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %142

14:                                               ; preds = %1
  %15 = call i32 (...) @sym_clear_all_valid()
  %16 = load %struct.menu*, %struct.menu** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rootmenu, i32 0, i32 0), align 8
  store %struct.menu* %16, %struct.menu** %5, align 8
  br label %17

17:                                               ; preds = %138, %14
  %18 = load %struct.menu*, %struct.menu** %5, align 8
  %19 = icmp ne %struct.menu* %18, null
  br i1 %19, label %20, label %139

20:                                               ; preds = %17
  %21 = load %struct.menu*, %struct.menu** %5, align 8
  %22 = getelementptr inbounds %struct.menu, %struct.menu* %21, i32 0, i32 3
  %23 = load %struct.symbol*, %struct.symbol** %22, align 8
  store %struct.symbol* %23, %struct.symbol** %4, align 8
  %24 = load %struct.symbol*, %struct.symbol** %4, align 8
  %25 = icmp eq %struct.symbol* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.menu*, %struct.menu** %5, align 8
  %28 = call i32 @menu_is_visible(%struct.menu* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %102

31:                                               ; preds = %26
  br label %101

32:                                               ; preds = %20
  %33 = load %struct.symbol*, %struct.symbol** %4, align 8
  %34 = call i32 @sym_is_choice(%struct.symbol* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %100, label %36

36:                                               ; preds = %32
  %37 = load %struct.symbol*, %struct.symbol** %4, align 8
  %38 = call i32 @sym_calc_value(%struct.symbol* %37)
  %39 = load %struct.symbol*, %struct.symbol** %4, align 8
  %40 = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SYMBOL_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %102

46:                                               ; preds = %36
  %47 = load i32, i32* @SYMBOL_WRITE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.symbol*, %struct.symbol** %4, align 8
  %50 = getelementptr inbounds %struct.symbol, %struct.symbol* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.symbol*, %struct.symbol** %4, align 8
  %54 = call i32 @sym_is_changable(%struct.symbol* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %102

57:                                               ; preds = %46
  %58 = load %struct.symbol*, %struct.symbol** %4, align 8
  %59 = call i32 @sym_get_string_value(%struct.symbol* %58)
  %60 = load %struct.symbol*, %struct.symbol** %4, align 8
  %61 = call i32 @sym_get_string_default(%struct.symbol* %60)
  %62 = call i64 @strcmp(i32 %59, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %102

65:                                               ; preds = %57
  %66 = load %struct.symbol*, %struct.symbol** %4, align 8
  %67 = call i64 @sym_is_choice_value(%struct.symbol* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = load %struct.symbol*, %struct.symbol** %4, align 8
  %71 = call i32 @sym_get_choice_prop(%struct.symbol* %70)
  %72 = call %struct.symbol* @prop_get_symbol(i32 %71)
  store %struct.symbol* %72, %struct.symbol** %7, align 8
  %73 = load %struct.symbol*, %struct.symbol** %7, align 8
  %74 = call %struct.symbol* @sym_choice_default(%struct.symbol* %73)
  store %struct.symbol* %74, %struct.symbol** %8, align 8
  %75 = load %struct.symbol*, %struct.symbol** %7, align 8
  %76 = call i32 @sym_is_optional(%struct.symbol* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %69
  %79 = load %struct.symbol*, %struct.symbol** %4, align 8
  %80 = load %struct.symbol*, %struct.symbol** %8, align 8
  %81 = icmp eq %struct.symbol* %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load %struct.symbol*, %struct.symbol** %4, align 8
  %84 = getelementptr inbounds %struct.symbol, %struct.symbol* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @S_BOOLEAN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.symbol*, %struct.symbol** %4, align 8
  %90 = call i64 @sym_get_tristate_value(%struct.symbol* %89)
  %91 = load i64, i64* @yes, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %102

94:                                               ; preds = %88, %82
  br label %95

95:                                               ; preds = %94, %78, %69
  br label %96

96:                                               ; preds = %95, %65
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.symbol*, %struct.symbol** %4, align 8
  %99 = call i32 @conf_write_symbol(i32* %97, %struct.symbol* %98, i32* @kconfig_printer_cb, i32* null)
  br label %100

100:                                              ; preds = %96, %32
  br label %101

101:                                              ; preds = %100, %31
  br label %102

102:                                              ; preds = %101, %93, %64, %56, %45, %30
  %103 = load %struct.menu*, %struct.menu** %5, align 8
  %104 = getelementptr inbounds %struct.menu, %struct.menu* %103, i32 0, i32 2
  %105 = load %struct.menu*, %struct.menu** %104, align 8
  %106 = icmp ne %struct.menu* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.menu*, %struct.menu** %5, align 8
  %109 = getelementptr inbounds %struct.menu, %struct.menu* %108, i32 0, i32 2
  %110 = load %struct.menu*, %struct.menu** %109, align 8
  store %struct.menu* %110, %struct.menu** %5, align 8
  br label %138

111:                                              ; preds = %102
  %112 = load %struct.menu*, %struct.menu** %5, align 8
  %113 = getelementptr inbounds %struct.menu, %struct.menu* %112, i32 0, i32 0
  %114 = load %struct.menu*, %struct.menu** %113, align 8
  %115 = icmp ne %struct.menu* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.menu*, %struct.menu** %5, align 8
  %118 = getelementptr inbounds %struct.menu, %struct.menu* %117, i32 0, i32 0
  %119 = load %struct.menu*, %struct.menu** %118, align 8
  store %struct.menu* %119, %struct.menu** %5, align 8
  br label %137

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %135, %120
  %122 = load %struct.menu*, %struct.menu** %5, align 8
  %123 = getelementptr inbounds %struct.menu, %struct.menu* %122, i32 0, i32 1
  %124 = load %struct.menu*, %struct.menu** %123, align 8
  store %struct.menu* %124, %struct.menu** %5, align 8
  %125 = icmp ne %struct.menu* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.menu*, %struct.menu** %5, align 8
  %128 = getelementptr inbounds %struct.menu, %struct.menu* %127, i32 0, i32 0
  %129 = load %struct.menu*, %struct.menu** %128, align 8
  %130 = icmp ne %struct.menu* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.menu*, %struct.menu** %5, align 8
  %133 = getelementptr inbounds %struct.menu, %struct.menu* %132, i32 0, i32 0
  %134 = load %struct.menu*, %struct.menu** %133, align 8
  store %struct.menu* %134, %struct.menu** %5, align 8
  br label %136

135:                                              ; preds = %126
  br label %121

136:                                              ; preds = %131, %121
  br label %137

137:                                              ; preds = %136, %116
  br label %138

138:                                              ; preds = %137, %107
  br label %17

139:                                              ; preds = %17
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @fclose(i32* %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %139, %13
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @sym_clear_all_valid(...) #1

declare dso_local i32 @menu_is_visible(%struct.menu*) #1

declare dso_local i32 @sym_is_choice(%struct.symbol*) #1

declare dso_local i32 @sym_calc_value(%struct.symbol*) #1

declare dso_local i32 @sym_is_changable(%struct.symbol*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @sym_get_string_value(%struct.symbol*) #1

declare dso_local i32 @sym_get_string_default(%struct.symbol*) #1

declare dso_local i64 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local %struct.symbol* @prop_get_symbol(i32) #1

declare dso_local i32 @sym_get_choice_prop(%struct.symbol*) #1

declare dso_local %struct.symbol* @sym_choice_default(%struct.symbol*) #1

declare dso_local i32 @sym_is_optional(%struct.symbol*) #1

declare dso_local i64 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i32 @conf_write_symbol(i32*, %struct.symbol*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
