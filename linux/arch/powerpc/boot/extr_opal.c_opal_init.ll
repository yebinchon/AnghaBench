; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_opal.c_opal_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_opal.c_opal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"/ibm,opal\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"opal-base-address\00", align 1
@opal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"opal-entry-address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @opal_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_init() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @finddevice(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %21

6:                                                ; preds = %0
  %7 = load i8*, i8** %1, align 8
  %8 = call i64 @getprop(i8* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opal, i32 0, i32 1), i32 4)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %21

11:                                               ; preds = %6
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opal, i32 0, i32 1), align 8
  %13 = call i8* @be64_to_cpu(i8* %12)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opal, i32 0, i32 1), align 8
  %14 = load i8*, i8** %1, align 8
  %15 = call i64 @getprop(i8* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opal, i32 0, i32 0), i32 4)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %21

18:                                               ; preds = %11
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opal, i32 0, i32 0), align 8
  %20 = call i8* @be64_to_cpu(i8* %19)
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opal, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %18, %17, %10, %5
  ret void
}

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i64 @getprop(i8*, i8*, i8**, i32) #1

declare dso_local i8* @be64_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
