; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_process_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_process_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected status interrupt version\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unexpected status interrupt version %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Status packet indicated Solos error on port %d (starting up?)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Showtime\00", align 1
@ATM_PHY_SIG_LOST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Port %d: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Port %d: %s @%d/%d kb/s%s%s%s%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c", SNR \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c", Attn \00", align 1
@ATM_PHY_SIG_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*, i32, %struct.sk_buff*)* @process_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_status(%struct.solos_card* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.solos_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.solos_card* %0, %struct.solos_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %16 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %17 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %192

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i8* @next_string(%struct.sk_buff* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %192

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @kstrtoint(i8* %36, i32 10, i32* %12)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %42 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_warn(i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %4, align 4
  br label %192

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %52 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_warn(i32* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %192

59:                                               ; preds = %47
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i8* @next_string(%struct.sk_buff* %60)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %192

67:                                               ; preds = %59
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %73 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 0, i32* %4, align 4
  br label %192

78:                                               ; preds = %67
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @kstrtoint(i8* %79, i32 10, i32* %14)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %4, align 4
  br label %192

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i8* @next_string(%struct.sk_buff* %86)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %192

93:                                               ; preds = %85
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @kstrtoint(i8* %94, i32 10, i32* %13)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %4, align 4
  br label %192

100:                                              ; preds = %93
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = call i8* @next_string(%struct.sk_buff* %101)
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %192

108:                                              ; preds = %100
  %109 = load i8*, i8** %9, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %108
  %113 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %114 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %115, i64 %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* @ATM_PHY_SIG_LOST, align 4
  %121 = call i32 @atm_dev_signal_change(%struct.TYPE_4__* %119, i32 %120)
  %122 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %123 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %6, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 (i32*, i8*, i32, i8*, ...) @dev_info(i32* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %126, i8* %127)
  store i32 0, i32* %4, align 4
  br label %192

129:                                              ; preds = %108
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = call i8* @next_string(%struct.sk_buff* %130)
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %192

137:                                              ; preds = %129
  %138 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %139 = call i8* @next_string(%struct.sk_buff* %138)
  store i8* %139, i8** %11, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %192

145:                                              ; preds = %137
  %146 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %147 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %6, align 4
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sdiv i32 %152, 1000
  %154 = load i32, i32* %13, align 4
  %155 = sdiv i32 %154, 1000
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %163 = load i8*, i8** %10, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 (i32*, i8*, i32, i8*, ...) @dev_info(i32* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %150, i8* %151, i32 %153, i32 %155, i8* %162, i8* %163, i8* %170, i8* %171)
  %173 = load i32, i32* %14, align 4
  %174 = sdiv i32 %173, 424
  %175 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %176 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %177, i64 %179
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32 %174, i32* %182, align 4
  %183 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %184 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %185, i64 %187
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i32, i32* @ATM_PHY_SIG_FOUND, align 4
  %191 = call i32 @atm_dev_signal_change(%struct.TYPE_4__* %189, i32 %190)
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %145, %142, %134, %112, %105, %98, %90, %83, %71, %64, %50, %40, %32, %24
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i8* @next_string(%struct.sk_buff*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @atm_dev_signal_change(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
