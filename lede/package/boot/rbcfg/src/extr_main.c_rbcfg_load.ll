; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_load.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_ctx = type { i8*, i8*, i32, i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unable to open %s\0A\00", align 1
@RB_ERR_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to read from %s\0A\00", align 1
@RB_MAGIC_SOFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid configuration\0A\00", align 1
@RB_ERR_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"configuration has CRC error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbcfg_ctx*)* @rbcfg_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbcfg_load(%struct.rbcfg_ctx* %0) #0 {
  %2 = alloca %struct.rbcfg_ctx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rbcfg_ctx* %0, %struct.rbcfg_ctx** %2, align 8
  %10 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %11 = call i32 @rbcfg_check_tmp(%struct.rbcfg_ctx* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i8* [ %17, %14 ], [ %21, %18 ]
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 @open(i8* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @RB_ERR_IO, align 4
  store i32 %33, i32* %9, align 4
  br label %96

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @read(i32 %35, i64 %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @RB_ERR_IO, align 4
  store i32 %52, i32* %9, align 4
  br label %93

53:                                               ; preds = %34
  %54 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @get_u32(i64 %56)
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @RB_MAGIC_SOFT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @RB_ERR_INVALID, align 4
  store i32 %64, i32* %9, align 4
  br label %93

65:                                               ; preds = %53
  %66 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 4
  %70 = call i64 @get_u32(i64 %69)
  store i64 %70, i64* %4, align 8
  %71 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @put_u32(i32 %75, i32 0)
  %77 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %78 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %2, align 8
  %82 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @cyg_ether_crc32(i8* %80, i32 %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %4, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %65
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @RB_ERR_INVALID, align 4
  store i32 %91, i32* %9, align 4
  br label %93

92:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %88, %61, %48
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @close(i32 %94)
  br label %96

96:                                               ; preds = %93, %29
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i32 @rbcfg_check_tmp(%struct.rbcfg_ctx*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i64 @get_u32(i64) #1

declare dso_local i32 @put_u32(i32, i32) #1

declare dso_local i64 @cyg_ether_crc32(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
