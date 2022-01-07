; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_bpck.c_bpck_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_bpck.c_bpck_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @bpck_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpck_read_eeprom(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i32 @bpck_force_spp(%struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 6, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = call i32 @bpck_connect(%struct.TYPE_6__* %25)
  %27 = call i32 @WR(i32 4, i32 0)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %96, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 64
  br i1 %30, label %31, label %99

31:                                               ; preds = %28
  %32 = call i32 @WR(i32 6, i32 8)
  %33 = call i32 @WR(i32 6, i32 12)
  store i32 256, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %56, %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 9
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 384
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 12
  %47 = call i32 @WR(i32 6, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 13
  %50 = call i32 @WR(i32 6, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 12
  %53 = call i32 @WR(i32 6, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %34

59:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %92, %59
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %78, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = call i32 @WR(i32 6, i32 12)
  %69 = call i32 @WR(i32 6, i32 13)
  %70 = call i32 @WR(i32 6, i32 12)
  %71 = call i32 @RR(i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 2, %72
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 132
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %64

81:                                               ; preds = %64
  %82 = load i32, i32* %9, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %84, i64 %90
  store i8 %83, i8* %91, align 1
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %60

95:                                               ; preds = %60
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %28

99:                                               ; preds = %28
  %100 = call i32 @WR(i32 6, i32 8)
  %101 = call i32 @WR(i32 6, i32 0)
  %102 = call i32 @WR(i32 5, i32 8)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = call i32 @bpck_disconnect(%struct.TYPE_6__* %103)
  %105 = load i32, i32* %11, align 4
  %106 = icmp sge i32 %105, 2
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = call i32 @bpck_connect(%struct.TYPE_6__* %108)
  %110 = call i32 @WR(i32 7, i32 3)
  %111 = call i32 @WR(i32 4, i32 8)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = call i32 @bpck_disconnect(%struct.TYPE_6__* %112)
  br label %114

114:                                              ; preds = %107, %99
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  ret void
}

declare dso_local i32 @bpck_force_spp(%struct.TYPE_6__*) #1

declare dso_local i32 @bpck_connect(%struct.TYPE_6__*) #1

declare dso_local i32 @WR(i32, i32) #1

declare dso_local i32 @RR(i32) #1

declare dso_local i32 @bpck_disconnect(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
