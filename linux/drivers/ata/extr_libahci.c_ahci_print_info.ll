; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_print_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"AHCI %02x%02x.%02x%02x %u slots %u ports %s Gbps 0x%x impl %s mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"flags: %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", align 1
@HOST_CAP_64 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"64bit \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOST_CAP_NCQ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"ncq \00", align 1
@HOST_CAP_SNTF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"sntf \00", align 1
@HOST_CAP_MPS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"ilck \00", align 1
@HOST_CAP_SSS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"stag \00", align 1
@HOST_CAP_ALPM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"pm \00", align 1
@HOST_CAP_LED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"led \00", align 1
@HOST_CAP_CLO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"clo \00", align 1
@HOST_CAP_ONLY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"only \00", align 1
@HOST_CAP_PMP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"pmp \00", align 1
@HOST_CAP_FBS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"fbs \00", align 1
@HOST_CAP_PIO_MULTI = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"pio \00", align 1
@HOST_CAP_SSC = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"slum \00", align 1
@HOST_CAP_PART = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"part \00", align 1
@HOST_CAP_CCC = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"ccc \00", align 1
@HOST_CAP_EMS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"ems \00", align 1
@HOST_CAP_SXS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"sxs \00", align 1
@HOST_CAP2_DESO = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"deso \00", align 1
@HOST_CAP2_SADM = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"sadm \00", align 1
@HOST_CAP2_SDS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"sds \00", align 1
@HOST_CAP2_APST = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"apst \00", align 1
@HOST_CAP2_NVMHCI = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"nvmp \00", align 1
@HOST_CAP2_BOH = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"boh \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahci_print_info(%struct.ata_host* %0, i8* %1) #0 {
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ahci_host_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %13 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %12, i32 0, i32 1
  %14 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %13, align 8
  store %struct.ahci_host_priv* %14, %struct.ahci_host_priv** %5, align 8
  %15 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 20
  %29 = and i32 %28, 15
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %44

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %42

41:                                               ; preds = %37
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %46 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 24
  %50 = and i32 %49, 255
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 255
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 31
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 31
  %65 = add nsw i32 %64, 1
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 (i32, i8*, ...) @dev_info(i32 %47, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %53, i32 %56, i32 %58, i32 %62, i32 %65, i8* %66, i32 %67, i8* %68)
  %70 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %71 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @HOST_CAP_64, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @HOST_CAP_NCQ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @HOST_CAP_SNTF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @HOST_CAP_MPS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @HOST_CAP_SSS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @HOST_CAP_ALPM, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @HOST_CAP_LED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @HOST_CAP_CLO, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @HOST_CAP_ONLY, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @HOST_CAP_PMP, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @HOST_CAP_FBS, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @HOST_CAP_PIO_MULTI, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @HOST_CAP_SSC, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @HOST_CAP_PART, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @HOST_CAP_CCC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @HOST_CAP_EMS, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @HOST_CAP_SXS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @HOST_CAP2_DESO, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @HOST_CAP2_SADM, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @HOST_CAP2_SDS, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @HOST_CAP2_APST, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @HOST_CAP2_NVMHCI, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @HOST_CAP2_BOH, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %211 = call i32 (i32, i8*, ...) @dev_info(i32 %72, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %78, i8* %84, i8* %90, i8* %96, i8* %102, i8* %108, i8* %114, i8* %120, i8* %126, i8* %132, i8* %138, i8* %144, i8* %150, i8* %156, i8* %162, i8* %168, i8* %174, i8* %180, i8* %186, i8* %192, i8* %198, i8* %204, i8* %210)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
