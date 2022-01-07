
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int gcc_ipq8074_desc ;
 int qcom_cc_probe (struct platform_device*,int *) ;

__attribute__((used)) static int gcc_ipq8074_probe(struct platform_device *pdev)
{
 return qcom_cc_probe(pdev, &gcc_ipq8074_desc);
}
