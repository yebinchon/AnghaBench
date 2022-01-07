; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_comm.c_comm_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_comm.c_comm_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@P1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @comm_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comm_write_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %87 [
    i32 0, label %11
    i32 1, label %11
    i32 2, label %34
    i32 3, label %53
    i32 4, label %70
  ]

11:                                               ; preds = %3, %3
  %12 = call i32 @w0(i8 signext 104)
  %13 = load i32, i32* @P1, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %28, %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = call i32 @w2(i32 5)
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @w0(i8 signext %25)
  %27 = call i32 @w2(i32 7)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %14

31:                                               ; preds = %14
  %32 = call i32 @w2(i32 5)
  %33 = call i32 @w2(i32 4)
  br label %87

34:                                               ; preds = %3
  %35 = call i32 @w3(i32 72)
  %36 = call i32 (...) @r1()
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %49, %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @w4(i8 signext %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %37

52:                                               ; preds = %37
  br label %87

53:                                               ; preds = %3
  %54 = call i32 @w3(i32 72)
  %55 = call i32 (...) @r1()
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %66, %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sdiv i32 %58, 2
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @pi_swab16(i8* %62, i32 %63)
  %65 = call i32 @w4w(i32 %64)
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %56

69:                                               ; preds = %56
  br label %87

70:                                               ; preds = %3
  %71 = call i32 @w3(i32 72)
  %72 = call i32 (...) @r1()
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %83, %70
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sdiv i32 %75, 4
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @pi_swab32(i8* %79, i32 %80)
  %82 = call i32 @w4l(i32 %81)
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %73

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %3, %86, %69, %52, %31
  ret void
}

declare dso_local i32 @w0(i8 signext) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @w4(i8 signext) #1

declare dso_local i32 @w4w(i32) #1

declare dso_local i32 @pi_swab16(i8*, i32) #1

declare dso_local i32 @w4l(i32) #1

declare dso_local i32 @pi_swab32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
