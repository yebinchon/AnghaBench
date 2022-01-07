; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt3c_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Bad address in firmware\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Checksum error in firmware\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt3c_info*, i8*, i32)* @bt3c_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_load_firmware(%struct.bt3c_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt3c_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [9 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bt3c_info* %0, %struct.bt3c_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %8, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.bt3c_info*, %struct.bt3c_info** %5, align 8
  %20 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @bt3c_io_write(i32 %28, i32 32832, i32 1028)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @bt3c_io_write(i32 %30, i32 32832, i32 1024)
  %32 = call i32 @udelay(i32 1)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @bt3c_io_write(i32 %33, i32 32832, i32 1028)
  %35 = call i32 @udelay(i32 17)
  br label %36

36:                                               ; preds = %175, %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %188

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 83
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %17, align 4
  br label %203

49:                                               ; preds = %39
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %51 = call i32 @memset(i8* %50, i32 0, i32 9)
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = call i32 @memcpy(i8* %52, i8* %54, i32 2)
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %57 = call i64 @kstrtoul(i8* %56, i32 16, i64* %13)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %212

62:                                               ; preds = %49
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %64 = call i32 @memset(i8* %63, i32 0, i32 9)
  %65 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  %68 = call i32 @memcpy(i8* %65, i8* %67, i32 8)
  %69 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %70 = call i64 @kstrtoul(i8* %69, i32 16, i64* %14)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %212

75:                                               ; preds = %62
  %76 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %77 = call i32 @memset(i8* %76, i32 0, i32 9)
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %13, align 8
  %81 = mul i64 %80, 2
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = call i32 @memcpy(i8* %78, i8* %83, i32 2)
  %85 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %86 = call i64 @kstrtoul(i8* %85, i32 16, i64* %15)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %212

91:                                               ; preds = %75
  %92 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %93 = call i32 @memset(i8* %92, i32 0, i32 9)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %118, %91
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %13, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %94
  %100 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %16, align 4
  %103 = mul nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = call i32 @memcpy(i8* %100, i8* %106, i32 2)
  %108 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %109 = call i64 @kstrtouint(i8* %108, i32 16, i32* %12)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %212

114:                                              ; preds = %99
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %94

121:                                              ; preds = %94
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %15, align 8
  %125 = add i64 %123, %124
  %126 = and i64 %125, 255
  %127 = icmp ne i64 %126, 255
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i32, i32* @EILSEQ, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %17, align 4
  br label %203

132:                                              ; preds = %121
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 51
  br i1 %137, label %138, label %175

138:                                              ; preds = %132
  %139 = load i32, i32* %10, align 4
  %140 = load i64, i64* %14, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @bt3c_address(i32 %139, i32 %141)
  %143 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %144 = call i32 @memset(i8* %143, i32 0, i32 9)
  store i32 0, i32* %16, align 4
  br label %145

145:                                              ; preds = %171, %138
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %13, align 8
  %149 = sub i64 %148, 4
  %150 = udiv i64 %149, 2
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %145
  %153 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %154 = load i8*, i8** %8, align 8
  %155 = load i32, i32* %16, align 4
  %156 = mul nsw i32 %155, 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = getelementptr inbounds i8, i8* %158, i64 12
  %160 = call i32 @memcpy(i8* %153, i8* %159, i32 4)
  %161 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %162 = call i64 @kstrtouint(i8* %161, i32 16, i32* %11)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %152
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %212

167:                                              ; preds = %152
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @bt3c_put(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %145

174:                                              ; preds = %145
  br label %175

175:                                              ; preds = %174, %132
  %176 = load i64, i64* %13, align 8
  %177 = mul i64 %176, 2
  %178 = add i64 %177, 6
  %179 = load i8*, i8** %8, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 %178
  store i8* %180, i8** %8, align 8
  %181 = load i64, i64* %13, align 8
  %182 = mul i64 %181, 2
  %183 = add i64 %182, 6
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = sub i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %7, align 4
  br label %36

188:                                              ; preds = %36
  %189 = call i32 @udelay(i32 17)
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @bt3c_address(i32 %190, i32 12288)
  %192 = load i32, i32* %10, align 4
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* @CONTROL, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @inb(i64 %195)
  %197 = or i32 %196, 64
  %198 = load i32, i32* %10, align 4
  %199 = zext i32 %198 to i64
  %200 = load i64, i64* @CONTROL, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @outb(i32 %197, i64 %201)
  br label %203

203:                                              ; preds = %188, %128, %45
  %204 = call i32 @udelay(i32 17)
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @bt3c_io_write(i32 %205, i32 28678, i32 0)
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @bt3c_io_write(i32 %207, i32 28677, i32 0)
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @bt3c_io_write(i32 %209, i32 28673, i32 0)
  %211 = load i32, i32* %17, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %203, %164, %111, %88, %72, %59
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @bt3c_io_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @bt3c_address(i32, i32) #1

declare dso_local i32 @bt3c_put(i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
