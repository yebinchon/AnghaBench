; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_env_set_u32.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_env_set_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_env = type { i32 }
%struct.rbcfg_value = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid value '%s'\0A\00", align 1
@RB_ERR_INVALID = common dso_local global i32 0, align 4
@rbcfg_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbcfg_env*, i8*)* @rbcfg_env_set_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbcfg_env_set_u32(%struct.rbcfg_env* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbcfg_env*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rbcfg_value*, align 8
  %7 = alloca i32, align 4
  store %struct.rbcfg_env* %0, %struct.rbcfg_env** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.rbcfg_env*, %struct.rbcfg_env** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.rbcfg_value* @rbcfg_env_find(%struct.rbcfg_env* %8, i8* %9)
  store %struct.rbcfg_value* %10, %struct.rbcfg_value** %6, align 8
  %11 = load %struct.rbcfg_value*, %struct.rbcfg_value** %6, align 8
  %12 = icmp eq %struct.rbcfg_value* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @RB_ERR_INVALID, align 4
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32, i32* @rbcfg_ctx, align 4
  %20 = load %struct.rbcfg_env*, %struct.rbcfg_env** %4, align 8
  %21 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rbcfg_value*, %struct.rbcfg_value** %6, align 8
  %24 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rbcfg_set_u32(i32 %19, i32 %22, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.rbcfg_value* @rbcfg_env_find(%struct.rbcfg_env*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @rbcfg_set_u32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
