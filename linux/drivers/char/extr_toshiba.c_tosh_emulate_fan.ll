; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_toshiba.c_tosh_emulate_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_toshiba.c_tosh_emulate_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@tosh_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @tosh_emulate_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosh_emulate_fan(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 65280
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 65535
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* @tosh_id, align 4
  %18 = icmp eq i32 %17, 64715
  br i1 %18, label %19, label %81

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %20, 65024
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = call i32 @outb(i32 190, i32 228)
  %26 = call zeroext i8 @inb(i32 229)
  store i8 %26, i8* %6, align 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @local_irq_restore(i64 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %37, 65280
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @local_irq_save(i64 %43)
  %45 = call i32 @outb(i32 190, i32 228)
  %46 = call zeroext i8 @inb(i32 229)
  store i8 %46, i8* %6, align 1
  %47 = call i32 @outb(i32 190, i32 228)
  %48 = load i8, i8* %6, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, 1
  %51 = call i32 @outb(i32 %50, i32 229)
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @local_irq_restore(i64 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %42, %39, %36
  %59 = load i64, i64* %3, align 8
  %60 = icmp eq i64 %59, 65280
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load i64, i64* %4, align 8
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @local_irq_save(i64 %65)
  %67 = call i32 @outb(i32 190, i32 228)
  %68 = call zeroext i8 @inb(i32 229)
  store i8 %68, i8* %6, align 1
  %69 = call i32 @outb(i32 190, i32 228)
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 254
  %73 = call i32 @outb(i32 %72, i32 229)
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @local_irq_restore(i64 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %64, %61, %58
  br label %81

81:                                               ; preds = %80, %1
  %82 = load i32, i32* @tosh_id, align 4
  %83 = icmp eq i32 %82, 64716
  br i1 %83, label %84, label %148

84:                                               ; preds = %81
  %85 = load i64, i64* %3, align 8
  %86 = icmp eq i64 %85, 65024
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @local_irq_save(i64 %88)
  %90 = call i32 @outb(i32 224, i32 228)
  %91 = call zeroext i8 @inb(i32 229)
  store i8 %91, i8* %6, align 1
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @local_irq_restore(i64 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load i8, i8* %6, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %87, %84
  %102 = load i64, i64* %3, align 8
  %103 = icmp eq i64 %102, 65280
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  %105 = load i64, i64* %4, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @local_irq_save(i64 %108)
  %110 = call i32 @outb(i32 224, i32 228)
  %111 = call zeroext i8 @inb(i32 229)
  store i8 %111, i8* %6, align 1
  %112 = load i8, i8* %6, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 254
  %115 = shl i32 %114, 8
  %116 = or i32 224, %115
  %117 = call i32 @outw(i32 %116, i32 228)
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @local_irq_restore(i64 %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %107, %104, %101
  %125 = load i64, i64* %3, align 8
  %126 = icmp eq i64 %125, 65280
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  %128 = load i64, i64* %4, align 8
  %129 = icmp eq i64 %128, 1
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @local_irq_save(i64 %131)
  %133 = call i32 @outb(i32 224, i32 228)
  %134 = call zeroext i8 @inb(i32 229)
  store i8 %134, i8* %6, align 1
  %135 = load i8, i8* %6, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %136, 1
  %138 = shl i32 %137, 8
  %139 = or i32 224, %138
  %140 = call i32 @outw(i32 %139, i32 228)
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @local_irq_restore(i64 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %130, %127, %124
  br label %148

148:                                              ; preds = %147, %81
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
