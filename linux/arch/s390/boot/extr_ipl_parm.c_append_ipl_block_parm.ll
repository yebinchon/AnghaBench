; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_append_ipl_block_parm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_append_ipl_block_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@early_command_line = common dso_local global i8* null, align 8
@ipl_block = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@COMMAND_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @append_ipl_block_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_ipl_block_parm() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  %5 = load i8*, i8** @early_command_line, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i8*, i8** @early_command_line, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** @early_command_line, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %1, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipl_block, i32 0, i32 0, i32 0), align 4
  switch i32 %14, label %33 [
    i32 129, label %15
    i32 128, label %24
  ]

15:                                               ; preds = %0
  %16 = load i8*, i8** %1, align 8
  %17 = load i32, i32* @COMMAND_LINE_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %3, align 8
  %20 = sub i64 %18, %19
  %21 = sub i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = call i64 @ipl_block_get_ascii_vmparm(i8* %16, i32 %22, %struct.TYPE_6__* @ipl_block)
  store i64 %23, i64* %4, align 8
  br label %33

24:                                               ; preds = %0
  %25 = load i8*, i8** %1, align 8
  %26 = load i32, i32* @COMMAND_LINE_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %3, align 8
  %29 = sub i64 %27, %28
  %30 = sub i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = call i64 @ipl_block_get_ascii_scpdata(i8* %25, i32 %31, %struct.TYPE_6__* @ipl_block)
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %0, %24, %15
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i8*, i8** %1, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 61
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8*, i8** @early_command_line, align 8
  %43 = load i8*, i8** %1, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @memmove(i8* %42, i8* %44, i64 %45)
  br label %49

47:                                               ; preds = %36
  %48 = load i8*, i8** %2, align 8
  store i8 32, i8* %48, align 1
  br label %49

49:                                               ; preds = %47, %41
  br label %50

50:                                               ; preds = %49, %33
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ipl_block_get_ascii_vmparm(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @ipl_block_get_ascii_scpdata(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
