; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_optional_arg_def.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_optional_arg_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }

@type_optional_arg_def = common dso_local global i32 0, align 4
@parse_var_ident = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@parse_nat_const = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_optional_arg_def() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = load i32, i32* @type_optional_arg_def, align 4
  %3 = call i32 @PARSE_INIT(i32 %2)
  %4 = load i32, i32* @parse_var_ident, align 4
  %5 = call i32 @PARSE_TRY_PES(i32 %4)
  %6 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @parse_nat_const, align 4
  %8 = call i32 @PARSE_TRY_PES(i32 %7)
  %9 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @PARSE_OK, align 4
  %11 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %11
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @PARSE_TRY_PES(i32) #1

declare dso_local i32 @EXPECT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
