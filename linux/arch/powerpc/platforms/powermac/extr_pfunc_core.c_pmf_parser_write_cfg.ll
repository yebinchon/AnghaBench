; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_parser_write_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_parser_write_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_cmd = type { i32 }
%struct.pmf_handlers = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"pmf: write_cfg(offset: %x, bytes: %ud)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pmf:   data: \0A\00", align 1
@write_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmf_cmd*, %struct.pmf_handlers*)* @pmf_parser_write_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmf_parser_write_cfg(%struct.pmf_cmd* %0, %struct.pmf_handlers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmf_cmd*, align 8
  %5 = alloca %struct.pmf_handlers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.pmf_cmd* %0, %struct.pmf_cmd** %4, align 8
  store %struct.pmf_handlers* %1, %struct.pmf_handlers** %5, align 8
  %9 = load %struct.pmf_cmd*, %struct.pmf_cmd** %4, align 8
  %10 = call i32 @pmf_next32(%struct.pmf_cmd* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pmf_cmd*, %struct.pmf_cmd** %4, align 8
  %12 = call i32 @pmf_next32(%struct.pmf_cmd* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pmf_cmd*, %struct.pmf_cmd** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @pmf_next_blob(%struct.pmf_cmd* %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @LOG_PARSE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @LOG_BLOB(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i32, i32* @write_cfg, align 4
  %23 = load %struct.pmf_cmd*, %struct.pmf_cmd** %4, align 8
  %24 = load %struct.pmf_handlers*, %struct.pmf_handlers** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @PMF_PARSE_CALL(i32 %22, %struct.pmf_cmd* %23, %struct.pmf_handlers* %24, i32 %25, i32 %26, i8* %27)
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @pmf_next32(%struct.pmf_cmd*) #1

declare dso_local i8* @pmf_next_blob(%struct.pmf_cmd*, i32) #1

declare dso_local i32 @LOG_PARSE(i8*, i32, i32) #1

declare dso_local i32 @LOG_BLOB(i8*, i8*, i32) #1

declare dso_local i32 @PMF_PARSE_CALL(i32, %struct.pmf_cmd*, %struct.pmf_handlers*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
