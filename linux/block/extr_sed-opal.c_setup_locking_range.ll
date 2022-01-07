; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_setup_locking_range.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_setup_locking_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_user_lr_setup = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@opalmethod = common dso_local global i32* null, align 8
@OPAL_SET = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_VALUES = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_RANGESTART = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@OPAL_RANGELENGTH = common dso_local global i32 0, align 4
@OPAL_READLOCKENABLED = common dso_local global i32 0, align 4
@OPAL_WRITELOCKENABLED = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error building Setup Locking range command.\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @setup_locking_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_locking_range(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.opal_user_lr_setup*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.opal_user_lr_setup*
  store %struct.opal_user_lr_setup* %17, %struct.opal_user_lr_setup** %8, align 8
  %18 = load %struct.opal_user_lr_setup*, %struct.opal_user_lr_setup** %8, align 8
  %19 = getelementptr inbounds %struct.opal_user_lr_setup, %struct.opal_user_lr_setup* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = mul nuw i64 8, %13
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @build_locking_range(i64* %15, i32 %24, i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %134

31:                                               ; preds = %2
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %36 = load %struct.opal_user_lr_setup*, %struct.opal_user_lr_setup** %8, align 8
  %37 = call i32 @enable_global_lr(%struct.opal_dev* %35, i64* %15, %struct.opal_user_lr_setup* %36)
  store i32 %37, i32* %10, align 4
  br label %124

38:                                               ; preds = %31
  %39 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %40 = load i32*, i32** @opalmethod, align 8
  %41 = load i64, i64* @OPAL_SET, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cmd_start(%struct.opal_dev* %39, i64* %15, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %46 = load i32, i32* @OPAL_STARTNAME, align 4
  %47 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %45, i32 %46)
  %48 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %49 = load i32, i32* @OPAL_VALUES, align 4
  %50 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %48, i32 %49)
  %51 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %52 = load i32, i32* @OPAL_STARTLIST, align 4
  %53 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %51, i32 %52)
  %54 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %55 = load i32, i32* @OPAL_STARTNAME, align 4
  %56 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %54, i32 %55)
  %57 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %58 = load i32, i32* @OPAL_RANGESTART, align 4
  %59 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %57, i32 %58)
  %60 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %61 = load %struct.opal_user_lr_setup*, %struct.opal_user_lr_setup** %8, align 8
  %62 = getelementptr inbounds %struct.opal_user_lr_setup, %struct.opal_user_lr_setup* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @add_token_u64(i32* %10, %struct.opal_dev* %60, i32 %63)
  %65 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %66 = load i32, i32* @OPAL_ENDNAME, align 4
  %67 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %65, i32 %66)
  %68 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %69 = load i32, i32* @OPAL_STARTNAME, align 4
  %70 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %68, i32 %69)
  %71 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %72 = load i32, i32* @OPAL_RANGELENGTH, align 4
  %73 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %71, i32 %72)
  %74 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %75 = load %struct.opal_user_lr_setup*, %struct.opal_user_lr_setup** %8, align 8
  %76 = getelementptr inbounds %struct.opal_user_lr_setup, %struct.opal_user_lr_setup* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @add_token_u64(i32* %10, %struct.opal_dev* %74, i32 %77)
  %79 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %80 = load i32, i32* @OPAL_ENDNAME, align 4
  %81 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %79, i32 %80)
  %82 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %83 = load i32, i32* @OPAL_STARTNAME, align 4
  %84 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %82, i32 %83)
  %85 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %86 = load i32, i32* @OPAL_READLOCKENABLED, align 4
  %87 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %85, i32 %86)
  %88 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %89 = load %struct.opal_user_lr_setup*, %struct.opal_user_lr_setup** %8, align 8
  %90 = getelementptr inbounds %struct.opal_user_lr_setup, %struct.opal_user_lr_setup* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @add_token_u64(i32* %10, %struct.opal_dev* %88, i32 %95)
  %97 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %98 = load i32, i32* @OPAL_ENDNAME, align 4
  %99 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %97, i32 %98)
  %100 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %101 = load i32, i32* @OPAL_STARTNAME, align 4
  %102 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %100, i32 %101)
  %103 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %104 = load i32, i32* @OPAL_WRITELOCKENABLED, align 4
  %105 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %103, i32 %104)
  %106 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %107 = load %struct.opal_user_lr_setup*, %struct.opal_user_lr_setup** %8, align 8
  %108 = getelementptr inbounds %struct.opal_user_lr_setup, %struct.opal_user_lr_setup* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @add_token_u64(i32* %10, %struct.opal_dev* %106, i32 %113)
  %115 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %116 = load i32, i32* @OPAL_ENDNAME, align 4
  %117 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %115, i32 %116)
  %118 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %119 = load i32, i32* @OPAL_ENDLIST, align 4
  %120 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %118, i32 %119)
  %121 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %122 = load i32, i32* @OPAL_ENDNAME, align 4
  %123 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %121, i32 %122)
  br label %124

124:                                              ; preds = %38, %34
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %134

130:                                              ; preds = %124
  %131 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %132 = load i32, i32* @parse_and_check_status, align 4
  %133 = call i32 @finalize_and_send(%struct.opal_dev* %131, i32 %132)
  store i32 %133, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %127, %29
  %135 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @build_locking_range(i64*, i32, i64) #2

declare dso_local i32 @enable_global_lr(%struct.opal_dev*, i64*, %struct.opal_user_lr_setup*) #2

declare dso_local i32 @cmd_start(%struct.opal_dev*, i64*, i32) #2

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #2

declare dso_local i32 @add_token_u64(i32*, %struct.opal_dev*, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @finalize_and_send(%struct.opal_dev*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
